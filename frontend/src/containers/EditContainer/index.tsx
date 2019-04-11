import {IPetDescription} from '../../interfaces/IPetDescription'
import * as React from 'react'

interface IEditContainerProps extends Partial<IPetDescription> {
    onHandleSubmit: (data: Partial<IPetDescription>) => void,
    obHandleCancel: () => void
}

export const EditContainer: React.FunctionComponent<IEditContainerProps> = (props) => {

}