import * as React from 'react'
import {SearchBox} from '../../components/SearchBox'
import style from './style.css'
interface IHeaderProps {
    value: string,
    handleSearch: (val: string) => void,
    handleClickHome: () => void,
    handleClickLogin: () => void,
    handleClickLogout: () => void
    isLoggedIn: boolean,
    username?: string,
}

interface IHeaderState {
    isActivated: boolean,
}
export class Header extends React.PureComponent<IHeaderProps, IHeaderState> {
    constructor(props) {
        super(props)
        this.state = {
            isActivated: false,
        }
    }
    componentDidMount(): void {
        window.addEventListener('scroll', () => {
            if (!this.state.isActivated && window.pageYOffset > 20) {
                this.setState({
                    isActivated: true,
                })
            }
            if (this.state.isActivated && window.pageYOffset < 20) {
                this.setState({
                    isActivated: false,
                })
            }
        })
    }

    render() {
        return (
            <div className={[style.headerContainer, this.state.isActivated ? style.activated : ''].join(' ')}>
                <div className={style.logoContainer} onClick={this.props.handleClickHome}>
                    Animal Welfare
                </div>
                <SearchBox value={this.props.value} handleSubmit={this.props.handleSearch} enableAutoSubmit={true}/>
                {
                    this.props.isLoggedIn ?
                        (
                            <div className={style.commandContainer}>
                                Welcome, {this.props.username} |
                                <span onClick={this.props.handleClickLogout}> Logout</span>
                            </div>
                        ) : (
                            <div className={style.commandContainer}>
                                Hello, Please
                                <span onClick={this.props.handleClickLogin}> Login</span>
                            </div>
                        )
                }
            </div>
        )
    }
}