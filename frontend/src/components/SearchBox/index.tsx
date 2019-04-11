import { debounce } from 'lodash'
import * as React from 'react'
import style from "./style.css"
export interface ISearchBoxProps {
    value: string,
    handleSubmit: (val: string) => void,
    enableAutoSubmit?: boolean,
    debounceTime?: number
}

export const SearchBox: React.FunctionComponent<ISearchBoxProps> = (props) => (
    <div className={style.inputContainer}>
    <input
        className={style.searchBox}
        value={props.value}
        onChange={(e) => {console.log(e.target.value); props.handleSubmit(e.target.value)}}
        onSubmit={(e) => props.handleSubmit(props.value)}
    />
    <span className={style.search}/>
    </div>
)