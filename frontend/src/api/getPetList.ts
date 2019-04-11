import {option} from '../option'
import {ws$} from '../dataStreams/thunk$'

export function getPetList(index: number, len?: number = 10): void {
    fetch(`${option.base}/PetInfoMasonry?start_index=${index}&length=${len}`, {
        method: 'GET',
    }).then((res) => {
        ws$.next(res)
    }).catch((err) => {
        console.log('fuck you')
    })
}
