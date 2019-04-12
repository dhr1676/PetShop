import {IPetDescription} from '../../interfaces/IPetDescription'
import { Form, Input, Button, Radio } from 'antd'
import * as React from 'react'
import { WrappedFormUtils } from 'antd/lib/form/Form';
import style from './style.css'
import axios from 'axios'
import {option} from '../../option'

interface IEditContainerProps extends Partial<IPetDescription> {
    handleSubmit: (data: Partial<IPetDescription>) => void,
    // obHandleCancel: () => void,
    form: WrappedFormUtils
}

function queryify(id, obj) {
    let res = `?pet_id=${id}&`
    for (let key in obj) {
        if (obj[key]) {
            res = `${res}${key}=${obj[key]}&`
        }
    }
    let ans = res.split('')
    ans.pop()
    return ans.join('')
}
const EditContainerInner: React.FunctionComponent<IEditContainerProps> = (props) => {
    const handleSubmit = (e: React.FormEvent) => {
        e.preventDefault();
        props.form.validateFields((err, val) => {
            // TODO: 改变真实提交方式
            axios.put(`${option.base}/PetInfoDetail/${props.id}${queryify(props.id || val.id, val)}`).then((res) => {
                props.handleSubmit(props)
            })
        })
    }
    const { getFieldDecorator } = props.form
    return (
        <div className={style.contain}>
        <Form onSubmit={handleSubmit} className='login-form'>
                <Form.Item label='ID'>
                {getFieldDecorator('pet_id', {
                    initialValue: props.id || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Type'>
                {getFieldDecorator('pet_type', {
                    initialValue: props.type || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Name'>
                {getFieldDecorator('name', {
                    initialValue: props.name || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Age'>
                {getFieldDecorator('age', {
                    initialValue: props.age || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Breed'>
                {getFieldDecorator('breed', {
                    initialValue: props.breed || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Gender'>
                {getFieldDecorator('gender', {
                    initialValue: props.gender || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Radio.Group>
                        <Radio value='1'>Male</Radio>
                        <Radio value='2'>Female</Radio>
                    </Radio.Group>,
                )}
            </Form.Item>
            <Form.Item label='Color'>
                {getFieldDecorator('color', {
                    initialValue: props.color || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Maturity Size'>
                {getFieldDecorator('maturity_size', {
                    initialValue: props.maturitySize || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Fur length'>
                {getFieldDecorator('fur_length', {
                    initialValue: props.furLength || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Vaccinated'>
                {getFieldDecorator('vaccinated', {
                    initialValue: props.isVaccinated || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Radio.Group>
                        <Radio value='1'>Yes</Radio>
                        <Radio value='2'>No</Radio>
                    </Radio.Group>,
                )}
            </Form.Item>
            <Form.Item label='Sterilized'>
                {getFieldDecorator('sterilized', {
                    initialValue: props.isSterilized || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Radio.Group>
                        <Radio value='1'>Yes</Radio>
                        <Radio value='2'>No</Radio>
                    </Radio.Group>,
                )}
            </Form.Item>
            <Form.Item label='Health Status'>
                {getFieldDecorator('health', {
                    initialValue: props.health || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Quantity'>
                {getFieldDecorator('quantity', {
                    initialValue: props.quantity || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Fee'>
                {getFieldDecorator('fee', {
                    initialValue: props.fee || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Shop'>
                {getFieldDecorator('shop', {
                    initialValue: props.shop || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Description'>
                {getFieldDecorator('description', {
                    initialValue: props.description || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Form.Item label='Image URL'>
                {getFieldDecorator('image_url', {
                    initialValue: props.imageURL || '',
                    rules: [{required: true, message: 'This is a required field'}],
                })(
                    <Input/>,
                )}
            </Form.Item>
            <Button htmlType='submit' className='submit-form-btn'>
                Submit
            </Button>
        </Form>
        </div>
    )
}

export const EditContainer = Form.create({ name: 'edit' })(EditContainerInner)
