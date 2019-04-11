import {Button, Icon, Table} from 'antd'
import * as React from 'react'
import style from './style.css'
import {IPetDescription} from '../../interfaces/IPetDescription'

const BG = Button.Group

interface IDescriptionPopupsProps extends IPetDescription {
    isSeller: boolean
    // control
    handleClickCloseBtn: () => void
    handleClickEditBtn: (id: string ) => void
    handleClickContact: (id: string) => void
    handleClickDeleteBtn: (id: string) => void
}

export const DescriptionPopups: React.FunctionComponent<Partial<IDescriptionPopupsProps>> = (props) => {
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
        description: 'Name',
        detail: props.name,
    }, {
        key: '2',
        description: 'Age',
        detail: props.age,
    }, {
        key: '3',
        description: 'Breed',
        detail: props.breed,
    }, {
        key: '4',
        description: 'Color',
        detail: props.color,
    }, {
        key: '5',
        description: 'id',
        detail: props.id,
    }]
    return (
        <div className={style.descriptionPopupsContainer}>
            <div className={style.briefContainer}>
                <div
                    className={style.imgContainer}
                    style={{
                        background: 'url(/test.jpg)',
                        backgroundSize: 'cover',
                    }}
                />
            </div>
            <div className={style.descriptionContainer}>
                <div className={style.tableContainer}>
                    <Table columns={cols} dataSource={data} showHeader={false} pagination={false}/>
                </div>
                <div className={style.bgContainer}>
                    <BG>
                        <Button type='primary' onClick={() => props.handleClickContact(props.id)}>Contact</Button>
                        {props.isSeller ?
                            (<Button onClick={() => props.handleClickEditBtn(props.id)}>Edit</Button>) :
                            ''
                        }
                        {props.isSeller ?
                            (<Button type={'danger'} onClick={() => props.handleClickDeleteBtn(this.id)}>Delete</Button>) :
                            ''
                        }
                    </BG>
                </div>
            </div>
            <Icon className={style.icon} type='close' onClick={() => props.handleClickCloseBtn()}/>
        </div>
        )
}
