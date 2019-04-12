import { Button, Icon, Table } from 'antd';
import * as React from 'react';
import { IRawPetSearchData } from '../../dataStreams/petDescription$';
import { IPetDescription } from '../../interfaces/IPetDescription';
import style from './style.css';
import { EditContainer } from '../EditContainer';

const BG = Button.Group

interface IDescriptionPopupsProps extends IPetDescription {
    isSeller: boolean
    // control
    handleClickCloseBtn: () => void
    handleClickEditBtn: (id: string) => void
    handleClickContact: (id: string) => void
    handleClickDeleteBtn: (id: string) => void

    handleSubmit: (data: IRawPetSearchData) => void
}

export const DescriptionPopups: React.FunctionComponent<Partial<IDescriptionPopupsProps>> = (props) => {
    let [isEditing, setEditingState] = React.useState(false)

    const cols = [{
        title: 'Description',
        dataIndex: 'description',
        key: 'description',
    }, {
        title: 'Detail',
        dataIndex: 'detail',
        key: 'detail',
    }]
    const data = [{
        key: '1',
        description: 'id',
        detail: props.id,
    }, {
        key: '2',
        description: 'Name',
        detail: props.name,
    }, {
        key: '3',
        description: 'Age',
        detail: props.age,
    }, {
        key: '4',
        description: 'Breed',
        detail: props.breed,
    }, {
        key: '5',
        description: 'Color',
        detail: props.color,
    }, {
        key: '6',
        description: 'Maturity Size',
        detail: props.maturitySize,
    }, {
        key: '7',
        description: 'Fur Length',
        detail: props.furLength,
    }, {
        key: '8',
        description: 'Health',
        detail: props.health,
    }, {
        key: '9',
        description: 'Quantity',
        detail: props.quantity,
    }, {
        key: '10',
        description: 'Fee',
        detail: props.fee,
    }, {
        key: '11',
        description: 'Shop',
        detail: props.shop,
    }, {
        key: '12',
        description: 'Description',
        detail: props.description,
    }]
    return (
        <div className={style.descriptionPopupsContainer}>
            <div className={style.briefContainer}>
                <div
                    className={style.imgContainer}
                    style={{
                        backgroundImage: `url(${props.imageURL})`,
                        backgroundSize: 'cover',
                        backgroundRepeat: 'no-repeat',
                    }}
                />
            </div>
            <div className={style.descriptionContainer}>
                {
                    !isEditing ?
                        (
                            <div>
                                <div className={style.tableContainer}>
                                    <Table columns={cols} dataSource={data} showHeader={false} pagination={false} />
                                </div>
                                <div className={style.bgContainer}>
                                    <BG>
                                        <Button type='primary' onClick={() => props.handleClickContact(props.id)}>Contact</Button>
                                        {props.isSeller ?
                                            (<Button onClick={() => {setEditingState(true); props.handleClickEditBtn(props.id)}}>Edit</Button>) :
                                            ''
                                        }
                                        {props.isSeller ?
                                            (<Button type={'danger'} onClick={() => props.handleClickDeleteBtn(props.id)}>Delete</Button>) :
                                            ''
                                        }
                                    </BG>
                                </div>
                            </div>
                        ) : (
                            <div className={style.editContaier}>
                                <EditContainer
                                    {...props}
                                    handleSubmit={(d: IRawPetSearchData) => {
                                        props.handleSubmit(d)
                                        setEditingState(false)
                                    }}
                                    methods='put'
                                />
                            </div>
                        )
                }
            </div>
            <Icon className={style.icon} type='close' onClick={() => props.handleClickCloseBtn()} />
        </div>
    )
}
