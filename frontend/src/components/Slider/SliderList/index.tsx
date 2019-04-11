import * as React from 'react'
// @ts-ignore
import styles from './style.css'
interface ISliderListProps {
    nowShowing: number,
    containerWidth: number,
    containerHeight: number
    speed?: number
}

export const SliderList: React.FunctionComponent<ISliderListProps> = (props) => {
    const childrenArray = React.Children.toArray(props.children)
    const style = {
        height: props.containerHeight + 'px',
        width: (childrenArray.length + 1) * props.containerWidth + 'px',
        left: -props.nowShowing * props.containerWidth + 'px',
        transition: `left ${props.speed || '1'}s`,
    }
    return (
        <ul style={style} className={styles.listContainer}>
            {childrenArray.map((item, index) =>
                (<li
                    className={styles.listItem}
                    style={{width: props.containerWidth, height: props.containerHeight}}
                    key={index}
                >
                    {item}
                </li>))}
        </ul>
    )
}
