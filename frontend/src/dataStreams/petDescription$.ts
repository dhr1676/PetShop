import {trunk$} from './thunk$'
import {filter, map} from 'rxjs/operators'
import {IPetDescription} from '../interfaces/IPetDescription'

export const petDescription$ = trunk$.pipe(
    filter(([data, _]) => data.type === 'petDescription'),
    map(([payload, _]) => payload.data as IPetDescription),
)