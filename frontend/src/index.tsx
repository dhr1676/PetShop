import * as React from 'react'
import * as ReactDOM from 'react-dom'

import {IInfoFlowContainerProps, InfoFlowContainer} from './containers/InfoFlowContainer'
import {IInfo} from './interfaces/IInfo'
import {withObservableStream} from './connector/withObservable'
import {petList$} from './dataStreams/petList$'
import {IPetListData} from './dataStreams/models/ReceivedData/Data-types/IPetListData'
import {map, pairwise, scan, startWith, tap} from 'rxjs/operators'
import {trunk$, ws$} from './dataStreams/thunk$'
import {SearchBox} from './components/SearchBox'
import {Header} from './containers/Header'
import {Index} from './Pages/Index'
import {DescriptionPopups} from './containers/DescriptionPopups'

import {getPetList} from './api/getPetList'


const infoArray: IInfo[] = [{title: "1", description: "test1", id: "1"},
    {title: "2", description: "test2", id: "2"},
    {title: "3", description: "test3", id: "3"},
    {title: "4", description: "test4", id: "4"},
    {title: "5", description: "test5", id: "5"},
    {title: "6", description: "test6", id: "6"},
    {title: "7", description: "test7", id: "7"},
    {title: "8", description: "test8", id: "8"},
    {title: "9", description: "test9", id: "9"},
    {title: "10", description: "test10", id: "10"},
    {title: "11", description: "test11", id: "11"},
]

const innerComponent = [
    (<div key={1} style={{height: '300px', backgroundColor: 'red'}}>t1</div>),
    (<div key={12} style={{height: '250px', backgroundColor: 'green'}}>t1</div>),
    (<div key={13} style={{height: '200px', backgroundColor: 'blue'}}>t1</div>),
    (<div key={14} style={{height: '300px', backgroundColor: 'red'}}>t1</div>),
    (<div key={15} style={{height: '250px', backgroundColor: 'green'}}>t1</div>),
    (<div key={16}style={{height: '200px', backgroundColor: 'blue'}}>t1</div>),
    (<div key={17}style={{height: '300px', backgroundColor: 'red'}}>t1</div>),
    (<div key={18}style={{height: '250px', backgroundColor: 'green'}}>t1</div>),
    (<div key={19}style={{height: '200px', backgroundColor: 'blue'}}>t1</div>),
    (<div key={10}style={{height: '300px', backgroundColor: 'red'}}>t1</div>),
    (<div key={111}style={{height: '250px', backgroundColor: 'green'}}>t1</div>),
]

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
    }}),
)

infoFlow$.subscribe((val) => console.log('infoFlow: ', val))
const containerWithStream = withObservableStream<{infoArray: IInfo[]}>(infoFlow$, (s) => {console.log(s)}, {
    infoArray: [],
})

const InfoFlowContainerWithRx = containerWithStream<{columnWidth: string, columnCount: number}>(InfoFlowContainer)

ReactDOM.render(<Index/>, document.getElementById('app'))
// ReactDOM.render(<DescriptionPopups name='testName' age={18} breed='someone' color='red' isSeller={false}/>, document.getElementById('app'))
// index: number,
//     imgURL: string[],
//     // description: IInfo[]

// ReactDOM.render(
//     <div>
//         <InfoFlowContainerWithRx columnWidth='300px' columnCount={5}>
//             {[...innerComponent]}
//         </InfoFlowContainerWithRx>
//     </div>
//     , document.getElementById('app'))

ws$.subscribe((data) => console.log(data))
getPetList(0, 90)

// setTimeout(() => {
//     ws$.next({
//         message: "chenggong",
//         code: 200,
//         type: 'userInfo',
//         data: {
//             username: 'test',
//             userid: '666',
//             userType: 'seller',
//         },
//     })
// }, 4500)
// //

// ReactDOM.render(
//     <Header
//         value='test'
//         handleSearch={console.log}
//         handleClickHome={console.log}
//         handleClickLogin={console.log}
//         handleClickLogout={console.log}
//         isLoggedIn={false}
//         username={'shabi'}
//     />, document.getElementById('app'))
