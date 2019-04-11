import {IInfo} from '../../../../interfaces/IInfo'
import {IReceivedPayload, SyntheticData} from '../IReceivedPayload'

export interface IPetListData extends SyntheticData {
    index: number,
    imgURL: string[],
    description: IInfo[],
}
