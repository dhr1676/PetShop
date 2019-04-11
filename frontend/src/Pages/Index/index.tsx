import * as React from 'react'
import {map, pairwise, startWith, tap, withLatestFrom} from 'rxjs/operators'
import {logout$} from '../../dataStreams/logout$'
import {IPetListData} from '../../dataStreams/models/ReceivedData/Data-types/IPetListData'
import {IUserData} from '../../dataStreams/models/ReceivedData/Data-types/IUserData'
import {petList$} from '../../dataStreams/petList$'
import {user$} from '../../dataStreams/user$'
import {IInfo} from '../../interfaces/IInfo'

import {combineLatest} from 'rxjs'
import {withObservableStream} from '../../connector/withObservable'
import {Header} from '../../containers/Header'
import {InfoFlowContainer} from '../../containers/InfoFlowContainer'
import style from './style.css'
import {DescriptionPopups} from '../../containers/DescriptionPopups'
import {IPetDescription} from '../../interfaces/IPetDescription'
import {petDescription$} from '../../dataStreams/petDescription$'
import {getPetDescription} from '../../api/getPetDescription'
interface IIndexProps {
    // user
    isLoggedIn: boolean,
    username?: string,
    userid?: string,
    userType?: 'seller' | 'customer' | '',
    // block-data
    infoArray: IInfo[],
    imageURL: string[],
    index: number
    // pet description
    petDescription: Partial<IPetDescription>
}

interface IIndexState {
    columnWidth: string,
    columnCount: number,
    isShowingLogin: boolean,
    isShowingDescription: boolean,
    searchBoxValue: string,
    showingDescriptionsIds: string,
}

// stream needed for this page
const info$ = petList$.pipe(
    startWith<IPetListData>({
        index: 0,
        imgURL: [],
        description: [],
    }),
    pairwise(),
    map<[IPetListData, IPetListData], IPetListData>(([prevData, data]) => {
        return {
            index: data.index,
            imgURL: prevData.imgURL.concat(data.imgURL),
            description: prevData.description.concat(data.description),
        }}),
)

interface IUserInfo {
    username?: string
    userid?: string
    userType?: 'seller' | 'customer' | ''
    isLoggedIn: boolean
}

const userInfo$ = user$.pipe(
    map<IUserData, IUserInfo>(({username, userid, userType}) => {
        return {
            username,
            userid,
            userType,
            isLoggedIn: true,
        }
    }),
    startWith<IUserInfo, IUserInfo>(
        {
            username: '',
            userid: '',
            userType: '',
            isLoggedIn: false,
        },
    ),
)

const logoutIndex$ = logout$.pipe(
    startWith(false),
)

const petDesc$ = petDescription$.pipe(
    startWith({
        id: '',
        type: '',
        name: '',
        age: '',
        breed: '',
    }),
)
const index$ = combineLatest<[IPetListData, IUserInfo, Partial<IPetDescription>, boolean]>(info$, userInfo$, petDesc$, logoutIndex$).pipe(
    map<[IPetListData, IUserInfo, Partial<IPetDescription>, boolean], IIndexProps>(([list, user, description, isLoggedOut]) => {
        return {
            isLoggedIn: user.isLoggedIn,
            username: user.username,
            userid: user.userid,
            userType: user.userType,
            infoArray: list.description,
            imageURL: list.imgURL,
            index: list.index,
            petDescription: description,
        }
    }),
)
// const index$ = info$.pipe(
//     withLatestFrom<IPetListData, [IPetListData, IUserInfo, boolean]>(userInfo$, logoutIndex$),
//     map<[IPetListData, IUserInfo, boolean], IIndexProps>(([list, user, isLoggedIn]) => {
//         return {
//             isLoggedIn,
//             username: user.username,
//             userid: user.userid,
//             userType: user.userType,
//             infoArray: list.description,
//             imageURL: list.imgURL,
//             index: list.index,
//         }
//     }),
//     tap((data) => console.log('flow to index$, ',data))
// )

class IndexContaier extends React.Component<IIndexProps, IIndexState> {
    constructor(props: Readonly<IIndexProps>) {
        super(props)
        this.state = {
            columnCount: 5,
            columnWidth: '16vw',
            isShowingLogin: false,
            isShowingDescription: false,
            searchBoxValue: '',
            showingDescriptionsIds: '',
        }
    }
    handleSearch = (val: string) => {
        this.setState(() => {
            return {
            searchBoxValue: val,
        }})
    }
    handleClickHome = () => {
        this.setState({
            isShowingDescription: false,
            isShowingLogin: false,
        })
    }
    handleClickLogin = () => {
        this.setState({
            isShowingDescription: false,
            isShowingLogin: true,
        })
    }
    handleClickLogout = () => {
        throw new Error('not Implemented')
    }
    handleClickCell = (id: string) => {
        getPetDescription(id)
        this.setState({
            isShowingDescription: true,
            isShowingLogin: false,
        })
    }
    handleClickCloseBtn = () => {
        this.setState({
            isShowingDescription: false,
            isShowingLogin: false,
        })
    }
    render() {
        return (
            <div className={style.indexOuterContainer}>
                <div className={style.indexContainer}>
                <div className={style.headerContainer}>
                    <Header
                        value={this.state.searchBoxValue}
                        handleSearch={this.handleSearch}
                        handleClickHome={this.handleClickHome}
                        handleClickLogin={this.handleClickLogin}
                        handleClickLogout={this.handleClickLogout}
                        isLoggedIn={this.props.isLoggedIn}
                        username={this.props.username}
                    />
                </div>
                <div className={style.bodyContainer}>
                    <InfoFlowContainer
                        columnWidth={this.state.columnWidth}
                        columnCount={this.state.columnCount}
                        infoArray={this.props.infoArray}
                        handleClickCell={this.handleClickCell}
                    >
                        {
                            this.props.imageURL.map(
                                (url, index) => (
                                    <img key={`key_${url}`} src={url} alt={'test'} style={{height: `${350 + Math.sin(index) * 100}px`}}/>
                                ),
                            )
                        }
                    </InfoFlowContainer>
                </div>
            </div>
                {
                    this.state.isShowingDescription ? (
                        <div className={style.descriptionContainer}>
                            <div>
                                <DescriptionPopups
                                    {
                                        ...this.props.petDescription
                                    }
                                    handleClickCloseBtn={this.handleClickCloseBtn}
                                />
                            </div>
                        </div>
                    ) : ''
                }
            </div>
        )
    }
}

const flowWithRx = withObservableStream<IIndexProps>(index$, () => console.log('index flow!'), {
    isLoggedIn: false,
    infoArray: [],
    imageURL: [],
    index: 0,
    petDescription: {},
})

export const Index = flowWithRx<{}>(IndexContaier)
