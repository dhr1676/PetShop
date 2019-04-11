import {trunk$} from './thunk$'
import {filter, mapTo} from 'rxjs/operators'

export const logout$ = trunk$.pipe(
    filter(([data, _]) => data.type === 'logout'),
    mapTo(true),
)