import * as React from 'react'
import {IInfo} from '../../interfaces/IInfo'
import {InfoColumn} from './InfoColumn'
import style from './style.css'
export interface IInfoFlowContainerProps {
    columnWidth: string,
    columnCount: number,
    infoArray: IInfo[],
    handleClickCell: (id: string) => void
}

export class InfoFlowContainer extends React.Component<IInfoFlowContainerProps> {
    constructor(props: Readonly<IInfoFlowContainerProps>) {
        super(props)
    }

    render() {
        function divideArray<T>(array: T[], pieces: number): T[][] {
            return [...Array(pieces).keys()].map((i) => array.filter((_, j) => {
                return j % pieces === i
            }))
        }
        const infoCols = divideArray(this.props.infoArray, this.props.columnCount)
        const innerComponentCols = divideArray(React.Children.toArray(this.props.children), this.props.columnCount)
        return (
            <div className={style.infoFlowContainer}>
                {
                    infoCols.map((col, i) => (
                        <div className={style.colContainer} key={i} style={{width: this.props.columnWidth}}>
                            <InfoColumn infoArray={col} handleClick={this.props.handleClickCell}>
                                {innerComponentCols[i]}
                            </InfoColumn>
                        </div>
                    ))
                }
            </div>
        )
    }
}
