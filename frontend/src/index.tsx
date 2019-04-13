import * as React from 'react'
import * as ReactDOM from 'react-dom'

import { IInfoFlowContainerProps, InfoFlowContainer } from './containers/InfoFlowContainer'
import { IInfo } from './interfaces/IInfo'
import { withObservableStream } from './connector/withObservable'
import { petList$ } from './dataStreams/petList$'
import { IPetListData } from './dataStreams/models/ReceivedData/Data-types/IPetListData'
import { map, pairwise, scan, startWith, tap } from 'rxjs/operators'
import { trunk$, ws$ } from './dataStreams/thunk$'
import { SearchBox } from './components/SearchBox'
import { Header } from './containers/Header'
import { Index } from './Pages/Index'
import { DescriptionPopups } from './containers/DescriptionPopups'

import { getPetList } from './api/getPetList'

const infoFlow$ = petList$.pipe(
    startWith<IPetListData>({
        index: 0,
        imgURL: [],
        description: [],
    }),
    pairwise(),
    tap((d) => console.log(`flow to infoFlow`, d)),
    map(([prevData, data]) => {
        return {
            infoArray: prevData.description.concat(data.description),
        }
    }),
)

infoFlow$.subscribe((val) => console.log('infoFlow: ', val))
const containerWithStream = withObservableStream<{ infoArray: IInfo[] }>(infoFlow$, (s) => { console.log(s) }, {
    infoArray: [],
})

const InfoFlowContainerWithRx = containerWithStream<{ columnWidth: string, columnCount: number }>(InfoFlowContainer)

ReactDOM.render(<Index />, document.getElementById('app'))
getPetList(0, 90)