const webpack = require('webpack');
const baseConfig = require('./webpack.common.js');
const { merge } = require('webpack-merge');

const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const { BundleAnalyzerPlugin } = require('webpack-bundle-analyzer');
const { cssLoaders } = require('./util');

module.exports = merge(baseConfig, {
  mode: 'production',
  target: 'browserslist',
  module: {
    rules: [
      {
        test: /\.(css|sass|scss)$/,
        use: [MiniCssExtractPlugin.loader, ...cssLoaders],
      },
    ],
  },
  plugins: [
    new webpack.DefinePlugin({
      PRODUCTION: JSON.stringify(true),
    }),
    new BundleAnalyzerPlugin({
      openAnalyzer: true,
      generateStatsFile: true,
    }),
  ],
});
