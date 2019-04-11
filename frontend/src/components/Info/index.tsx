import * as React from 'react'
import {useState} from 'react'
import {IInfo} from '../../interfaces/IInfo'
import {InfoPopups} from './InfoPopups'
// @ts-ignore
import style from './style.css'

interface IInfoProps extends IInfo {
    moreOptionsRenderer: (id: string) => React.ReactElement,
    handleClick: (id: string) => void,
    id: string,

}

export const Info: React.FunctionComponent<IInfoProps> = (props) => {
    const [show, switchShow] = useState(false)
    return (
        <div
            className={style.infoContainer}
            onMouseEnter={() => switchShow(true)}
            onMouseLeave={() => switchShow(false)}
            onClick={() => props.handleClick(props.id)}
        >
            <div className={style.childrenContainer}>
                {props.children}
            </div>
            <div
                className={style.popupsContainer}
            >
                {
                    show ?
                        (<InfoPopups
                            id={props.id}
                            title={props.title}
                            description={props.description}
                            moreOptionsRenderer={props.moreOptionsRenderer}
                        />)
                        : ''
                }
            </div>
        </div>
    )
}
