const path = require('path');
const TerserPlugin = require('terser-webpack-plugin');

// entry
const entry = {
  index: './frontend/js/index',
  post: './frontend/js/post'
};

// output
const output = {
  path: path.resolve(__dirname, '../wordpress/wp-content/themes/newTemplate/assets/'),
  filename: 'js/[name]-[hash].js',
};

// configure Optimization
const configureOptimization = () => {
  return {
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\\/]node_modules[\\/]/,
          name: 'vendor',
          chunks: 'all'
        },
        styles: {
          name: 'styles',
          test: /\.s?css$/,
          chunks: 'all',
          minChunks: 2,
          enforce: true,
        },
      }
    },
    minimizer: [new TerserPlugin()]
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
        loader: 'file-loader',
        options: {
          name: '[name].[ext]',
        },
      },
    ],
  },
  optimization: configureOptimization()
};
