import {IPetDescription} from '../interfaces/IPetDescription'
import {IPetDescriptionData} from '../dataStreams/models/ReceivedData/Data-types/IPetDescriptionData'
import axios from 'axios'
import {option} from '../option'
import {ws$} from '../dataStreams/thunk$'

export function getPetDescription(id: string): void {
    // TODO: 连接
    axios.get(`${option.base}/PetInfoDetail/${id}`).then((res) => {
        ws$.next(res.data)
    })
}
