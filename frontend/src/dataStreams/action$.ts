import axios from 'axios'
import {Observable} from 'rxjs'
import {fromPromise} from 'rxjs/internal-compatibility'

export const action$ = fromPromise(axios.get('http://locallost'))
