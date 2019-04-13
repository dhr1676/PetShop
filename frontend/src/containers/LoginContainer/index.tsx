import { Form, Icon, Input, Button, Checkbox } from 'antd'
import * as React from 'react'
import { WrappedFormUtils } from 'antd/lib/form/Form';
interface ILoginContainerProps {
    handleLogin: (username: string, usertype: string) => void,
    form: WrappedFormUtils
}
const LoginContainerInner: React.FunctionComponent<ILoginContainerProps> = (props) => {
    const handleSubmit = (e) => {
        e.preventDefault();
        props.form.validateFields((err, values) => {
            if (!err) {
                switch (values.userName) {
                    case 'admin':
                        props.handleLogin(values.userName, 'seller')
                        return
                    case 'user':
                        props.handleLogin(values.userName, 'costumer')
                        return
                    default:
                        console.log('err')
                }
            }
        });
    }
    const { getFieldDecorator } = props.form;
    return (
        <Form onSubmit={(e) => handleSubmit(e)} className='login-form'>
            <Form.Item>
                {getFieldDecorator('userName', {
                    rules: [{ required: true, message: 'Please input your username!' }],
                })(
                    <Input prefix={<Icon type='user' style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Username" />
                )}
            </Form.Item>
            <Form.Item>
                {getFieldDecorator('password', {
                    rules: [{ required: true, message: 'Please input your Password!' }],
                })(
                    <Input prefix={<Icon type='lock' style={{ color: 'rgba(0,0,0,.25)' }} />} type="password" placeholder="Password" />
                )}
            </Form.Item>
            <Form.Item>
                <Button type='primary' htmlType='submit' className='login-form-button'>
                    Log in
              </Button>
            </Form.Item>
        </Form>
    );
}

export const LoginContainer = Form.create({name: 'login'})(LoginContainerInner)
