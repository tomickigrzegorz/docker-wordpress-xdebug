const webpack = require('webpack');
const path = require('path');
const merge = require('webpack-merge');

const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const { BundleAnalyzerPlugin } = require('webpack-bundle-analyzer');
const baseConfig = require('./webpack.base.js');

module.exports = merge(baseConfig, {
  mode: 'production',
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
    new CopyWebpackPlugin([
      { from: './frontend/images/', to: './images/' }
    ]),
    new webpack.DefinePlugin({
      PRODUCTION: JSON.stringify(true),
    }),
    new MiniCssExtractPlugin({
      filename: 'css/[name]-[hash].css',
    }),
    new BundleAnalyzerPlugin({
      openAnalyzer: true,
      generateStatsFile: true,
    }),
  ],
});
