import {option} from '../option'
import {ws$} from '../dataStreams/thunk$'
import axios from 'axios'

export function getPetList(index: number, len?: number = 10): void {
    axios.get(`${option.base}/PetInfoMasonry?start_index=${index}&length=${len}`).then((res) => {
        ws$.next(res.data)
    })
}
