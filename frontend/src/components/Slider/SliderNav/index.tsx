import * as React from 'react'
// @ts-ignore
import style from './style.css'
interface ISliderNavProps {
    totalPages: number,
    currentPage: number,
    handlePageChange: (page: number) => void
}

export const SliderNav: React.FunctionComponent<ISliderNavProps> = (props) => (
    <ul className={style.navContainer}>
        {
            // @ts-ignore
            Array.apply(null, Array(5)).map((_, i) => i).map((i) => (
                <li
                    key={i}
                    className={`${style.navDot} ${i === props.currentPage ? style.activated : ''}`}
                    onClick={props.handlePageChange.bind(null, i)}
                />
            ))
        }
    </ul>
)
