const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

const config = {
	mode: process.env.NODE_ENV,
	module: {
		rules: [
			{
				test: /\.imba$/,
				loader: 'imba/loader',
			},
			{
				test: /\.css|.scss$/,
				use: [
					{
						loader: 'style-loader',
					},
					{
						loader: 'css-loader',
					},
					{
						options: {
							includePaths: ['./node_modules'],
						},
						loader: 'sass-loader',
					}
				]
			}
		]
	},
	resolve: {
		extensions: [".imba",".js", ".json"]
	},
	entry: "./src/index.js",
	output: {
		path: __dirname + '/dist',
		filename: "material-imba.js",
		library: 'MaterialImba',
		libraryTarget: 'umd'
	}
};

if (process.env.NODE_ENV === 'production') {
	config.optimization = {
    minimizer: [
			new UglifyJsPlugin(),
    ]
  }
}

module.exports = config;