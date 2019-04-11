import * as React from 'react'
import {Observable, observable, Subject, Subscription} from 'rxjs'

export function withObservableStream<S>(observable$: Observable<S>,
                                        trigger: (source$: Subject<any>) => void,
                                        initialState: S) {
    // 使用React Component的时候，传递的是构造函数而不是实例
    // 所以Component不能是React.Component
    // https://stackoverflow.com/questions/31815633/what-does-the-error-jsx-element-type-does-not-have-any-construct-or-call
    return <P extends {}>(Component: React.ComponentType<S>) => {
        return class extends React.Component<P, S> {
            private subs: Subscription
            constructor(props: Readonly<P>) {
                super(props)
                this.state = {
                    ...initialState,
                }
            }
            componentDidMount(): void {
                this.subs = observable$.subscribe((newState) => this.setState({...newState}))
            }
            componentWillUnmount(): void {
                this.subs.unsubscribe()
            }
            render() {
                return (
                    <Component {...this.props} {...this.state} {...trigger}/>
                )
            }
        }
    }
}
