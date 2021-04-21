const webpack = require('webpack');
const path = require('path');

const TerserPlugin = require('terser-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

const mode = process.env.NODE_ENV === 'production' ? '-[fullhash]' : '';

console.log(process.env.NODE_ENV);

// entry
const entry = {
  index: './frontend/js/index.js',
  post: './frontend/js/post.js',
};

// output
const output = {
  path: path.resolve(__dirname, '../wordpress/wp-content/themes/newTemplate/assets/'),
  filename: `js/[name]${mode}.js`,
};

// mincss
const configCss = () => {
  return {
    filename: `css/[name]${mode}.css`,
  };
};

// configure Optimization
const configureOptimization = () => {
  return {
    splitChunks: {
      cacheGroups: {
        // vendor: {
        //   test: /[\\/]node_modules[\\/]/,
        //   name: 'vendor',
        //   chunks: 'all'
        // },
        styles: {
          name: 'vendor',
          test: /\.s?css$/,
          chunks: 'all',
          minChunks: 2,
          enforce: true,
        },
      }
    },
    minimize: true,
    minimizer: [new TerserPlugin({
        extractComments: false,
      })]
  }
}

module.exports = {
  entry,
  output,
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(jpe?g|png|gif|svg)$/i,
        type: 'asset/resource',
        generator: {
          // adding a hash to the file
          filename: 'images/[name].[ext]',
        },
      },
    ],
  },
  optimization: configureOptimization(),
  plugins: [
    new CleanWebpackPlugin({
      dry: false,
      verbose: true
    }),
    new CopyWebpackPlugin({
      patterns: [
        { from: './frontend/images/', to: './images/' }
      ]
    }),
    new MiniCssExtractPlugin(configCss()),
    new webpack.HotModuleReplacementPlugin(),
  ]
};
