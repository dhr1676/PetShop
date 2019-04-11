import * as React from 'react'
import {RefObject} from 'react'
import {SliderList} from './SliderList'
import {SliderNav} from './SliderNav'
// @ts-ignore
import styles from './style.css'

interface ISliderState {
    containerRefs: RefObject<HTMLDivElement>,
    currentPage: number,
    totalPages: number
}

interface ISliderProps {
    containerHeight: number,
    containerWidth: number,
    switchInterval: number
}
export class Slider extends React.Component<ISliderProps, ISliderState> {
    private timer: number
    constructor(props: Readonly<ISliderProps>) {
        super(props)
        this.state = {
            containerRefs: React.createRef(),
            currentPage: 0,
            totalPages: React.Children.toArray(this.props.children).length,
        }
        this.handlePageChange = this.handlePageChange.bind(this)
    }

    handlePageChange(page?: number) {
        clearInterval(this.timer)
        this.setState((prevState) => {
            if (page || page === 0) {
                return {
                    ...this.state,
                    currentPage: page,
                }
            } else {
                return {
                    ...this.state,
                    currentPage: prevState.currentPage === this.state.totalPages - 1
                                 ? 0
                                 : prevState.currentPage + 1,
                }
            }
        })
        this.timer = setInterval(() => {
            this.handlePageChange()
        }, this.props.switchInterval)
    }

    componentDidMount(): void {
        this.timer = setInterval(() => {
            this.handlePageChange()
        }, this.props.switchInterval)
    }

    componentWillUnmount(): void {
        clearInterval(this.timer)
    }

    render() {
        const sizingStyle = {
            height: this.props.containerHeight,
            width: this.props.containerWidth,
        }
        const navPosition = {
            top: sizingStyle.height - 30 + 'px',
            left: sizingStyle.width / 2 + 'px',
            transform: 'translateX(-50%)',
        }
        return (
            <div className={styles.sliderContainer} style={sizingStyle}>
                <SliderList
                    nowShowing={this.state.currentPage}
                    containerWidth={sizingStyle.width}
                    containerHeight={sizingStyle.height}
                    children={this.props.children}
                />
                <div style={navPosition} className={styles.sliderNavContainer}>
                    <SliderNav
                        totalPages={this.state.totalPages}
                        currentPage={this.state.currentPage}
                        handlePageChange={this.handlePageChange}
                    />
                </div>
            </div>
        )
    }
}
