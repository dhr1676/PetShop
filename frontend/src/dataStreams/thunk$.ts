import {tap, withLatestFrom} from 'rxjs/operators'
import {webSocket} from 'rxjs/webSocket'
import {serverConfig} from '../../config/serverConfig'
import {IRootData} from './models/IRootData'
import {IReceivedPayload} from './models/ReceivedData/IReceivedPayload'
import {root$} from './root$'
import {BehaviorSubject} from 'rxjs'

// export const ws$ = webSocket<IReceivedPayload>(serverConfig.wsServerURL)
export const ws$ = new BehaviorSubject({})
const trunk$ = ws$.pipe(
    withLatestFrom<IReceivedPayload, [IReceivedPayload, IRootData]>(root$),
    tap((t) => console.log('thunk, ', t))
)

export {trunk$}
