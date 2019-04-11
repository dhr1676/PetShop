import {IReceivedPayload, SyntheticData} from '../IReceivedPayload'
import {IPetDescription} from '../../../../interfaces/IPetDescription'

export interface IPetDescriptionData extends IReceivedPayload {
    data: Partial<IPetDescription>
}