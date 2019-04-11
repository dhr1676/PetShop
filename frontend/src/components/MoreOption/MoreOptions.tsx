import * as React from 'react'
import style from './style.css'
interface IMoreOptions {
    id: string,
    onClickContact: (id: string) => void,
    onClickMore: (id: string) => void
}
export const MoreOptions: React.FunctionComponent<IMoreOptions> = (props) => {
    return (
        <div>
            <div className={style.moreOps} onClick={() => props.onClickContact(props.id)}>
                Contact
            </div>
            <div className={style.moreOps} onClick={() => props.onClickMore(props.id)}>
                More...
            </div>
        </div>
    )
}
