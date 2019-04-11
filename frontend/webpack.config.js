const path = require('path');
const HTMLWebPackPlugin = require('html-webpack-plugin');
require("@babel/polyfill")

module.exports = {
    devServer: {
        contentBase: path.join(__dirname),
        compress: true,
        port: 9000,
        proxy: {
            '/api': {
                target: 'http://localhost:5000/',
                pathRewrite: {'^/api' : ''},
                changeOrigin: true,     // target是域名的话，需要这个参数，
                secure: false,          // 设置支持https协议的代理
            }
        }
    },
    entry: ["@babel/polyfill", path.join(__dirname, 'src/index.tsx')],
    output: {
        filename: '[name].js',
        path: path.resolve(__dirname, './dist')
    },
    resolve: {
        extensions: ['.js', '.ts', '.tsx']
    },
    module: {
        rules: [
            {
                test: /\.(ts|tsx)$/,
                exclude: /node_modules/,
                use: {
                    loader: "babel-loader"
                }
            },
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: ["source-map-loader"],
                enforce: "pre"
            },
            {
                test: /\.html$/,
                use: {
                    loader: "html-loader"
                }
            },
            {
                test: /\.(jpe?g|png|gif|svg)$/i,
                loader: 'url-loader',
                options: {
                    limit: 10000,
                },
            },
            {
                test: /\.css$/,
                use: [
                    { loader: 'style-loader' },
                    { loader: 'css-loader', options: { modules: true, importLoaders: 1 } },
                ],
                exclude: /node_modules/
            },
            {
                test: /\.css$/,
                use: [
                    { loader: 'style-loader' },
                    { loader: 'css-loader' }
                ],
                include: /node_modules/
            }
            ]
    },
    plugins: [
        new HTMLWebPackPlugin({
            template: "./template/index.html",
            filename: "index.html"
        })
    ]
};