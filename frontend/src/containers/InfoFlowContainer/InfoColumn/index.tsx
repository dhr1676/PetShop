import * as React from 'react'
import {Info} from '../../../components/Info'
import {MoreOptions} from '../../../components/MoreOption/MoreOptions'
import {IInfo} from '../../../interfaces/IInfo'

import style from './style.css'

interface IInfoColumn {
    infoArray: IInfo[],
    handleClick: (id: string) => void
}
export const InfoColumn: React.FunctionComponent<IInfoColumn> = (props) => {
    const childrenArray = React.Children.toArray(props.children)
    return (
        <div className={style.col}>
            {
                props.infoArray.map(
                    (infoData, i) => (
                        <div className={style.infoContainer} key={`info_col_${i}`}>
                            <Info
                                moreOptionsRenderer={(id) => MoreOptions(
                                    {
                                        id: infoData.id,
                                        onClickMore: props.handleClick,
                                        onClickContact: () => {
                                            console.log('not implemented contact in "infocol/index"')
                                        },
                                    })}
                                id={infoData.id}
                                title={infoData.title}
                                description={infoData.description}
                                handleClick={() => props.handleClick(infoData.id)}
                            >
                                {childrenArray[i]}
                            </Info>
                        </div>
                    ),
                )
            }
        </div>
    )
}
