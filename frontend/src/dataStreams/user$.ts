import {trunk$} from './thunk$'
import {filter, map, tap} from 'rxjs/operators'
import {IUserData} from './models/ReceivedData/Data-types/IUserData'
import {IInfo} from '../interfaces/IInfo'

export const user$ = trunk$.pipe(
    filter(([data, _]) => data.type === 'userInfo'),
    map(([payload, _]) => payload.data as IUserData),
    tap(console.log),
)

