export type ReceiverType =
    'MasonryList' |
    'userInfo' |
    'userAuth' |
    'PetSearch'|
    'logout'|
    'PetSearch'|
    'PureMessage'

export interface SyntheticData {}

export interface IReceivedPayload {
    message: string,
    code: string | number
    type: ReceiverType,
    data?: SyntheticData
}
