import {IPetDescription} from '../interfaces/IPetDescription'
import {IPetDescriptionData} from '../dataStreams/models/ReceivedData/Data-types/IPetDescriptionData'
import {ws$} from '../dataStreams/thunk$'

export function getPetDescription(id: string): void {
    // TODO: 连接
     ws$.next({
        message: 'success',
        code: '200',
        type: 'petDescription',
        data: {
            id,
            name: 'test',
            age: 8,
            breed: 'Jack',
            color: 'yellow',
            maturitySize: 'large',
        },
    })
}
