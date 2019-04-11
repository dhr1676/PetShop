import {BehaviorSubject} from 'rxjs'
import {IRootData} from './models/IRootData'

export const root$ = new BehaviorSubject<IRootData>(
    {
        token: '',
    },
)
