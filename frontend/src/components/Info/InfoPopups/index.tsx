import * as React from 'react'
import {useState} from 'react'
// @ts-ignore
import style from './style.css'
interface IInfoPopupsProps {
    id: string,
    title: string,
    description: string,
    moreOptionsRenderer: (id: string) => React.ReactElement,
}

export const InfoPopups: React.FunctionComponent<IInfoPopupsProps> = (props) => {
    const [show, switchShow] = useState(false)
    return (
        <div className={style.InfoPopupsContainer}>
            <section className={style.title}>
                {props.title}
            </section>
            <section className={style.description}>
                {props.description}
            </section>
            <div
                className={style.moreOptionsContainer}
                onClick={(e) => e.stopPropagation()}
                // onMouseEnter={() => switchShow(true)}
                // onMouseLeave={() => switchShow(false)}
            >
                {show ? props.moreOptionsRenderer(props.id) : ''}
            </div>
            <section className={style.commandContainer}>
                <div
                    className={style.icon}
                    onClick={(e) => {
                        switchShow(true)
                        e.stopPropagation()
                    }}
                    // onMouseLeave={() => switchShow(false)}
                />
            </section>

        </div>
    )
}
