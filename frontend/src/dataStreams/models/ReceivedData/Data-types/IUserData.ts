import {SyntheticData} from '../IReceivedPayload'

export interface IUserData extends SyntheticData {
    username: string,
    userid: string,
    userType: 'seller' | 'customer'
}