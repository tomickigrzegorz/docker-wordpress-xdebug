const webpack = require('webpack');
const path = require('path');
const merge = require('webpack-merge');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const BrowserSyncPlugin = require('browser-sync-webpack-plugin');
const baseConfig = require('./webpack.base.js');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');


module.exports = merge(baseConfig, {
  mode: 'development',
  devServer: {
    writeToDisk: true,
  },
  module: {
    rules: [
      {
        test: /\.(css|sass|scss)$/,
        use: [
          MiniCssExtractPlugin.loader,
          {
            loader: 'css-loader',
            options: {
              importLoaders: 2,
              sourceMap: true,
            },
          },
          {
            loader: 'postcss-loader',
            options: {
              sourceMap: true,
              config: {
                path: './config/',
              },
            },
          },
          {
            loader: 'sass-loader',
            options: {
              sourceMap: true,
            },
          },
        ],
      },
    ],
  },
  plugins: [
    new CleanWebpackPlugin({
      dry: false,
      verbose: true
    }),
    new webpack.DefinePlugin({
      PRODUCTION: JSON.stringify(false),
    }),
    new MiniCssExtractPlugin({
      filename: 'css/[name]-[hash].css',
    }),
    new BrowserSyncPlugin(
      {
        host: 'localhost',
        proxy: 'http://localhost',
        reloadDelay: 2000, // wystarczajacy czas na wygenerowanie css/js
        files: [
          './wp-content/themes/newTemplate/**/*.php',
          './frontend/**/*.js',
          './frontend/**/*.scss',
        ],
      },
      {
        reload: false,
      }
    ),
  ],
});
