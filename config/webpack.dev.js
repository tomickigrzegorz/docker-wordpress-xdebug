const webpack = require('webpack');
const baseConfig = require('./webpack.common.js');
const { merge } = require('webpack-merge');

const BrowserSyncPlugin = require('browser-sync-webpack-plugin');
const { cssLoaders } = require('./util');

module.exports = merge(baseConfig, {
  mode: 'development',
  target: 'web',
  devServer: {
    writeToDisk: true,
    inline: true,
    stats: 'errors-only',
  },
  devtool: 'inline-source-map',
  module: {
    rules: [
      {
        test: /\.(css|sass|scss)$/,
        use: ['style-loader', ...cssLoaders],
      },
    ],
  },
  plugins: [
    new webpack.DefinePlugin({
      PRODUCTION: JSON.stringify(false),
    }),
    new BrowserSyncPlugin(
      {
        host: 'localhost',
        proxy: 'http://localhost',
        reloadDelay: 2000, // wystarczajacy czas na wygenerowanie css/js
        files: [
          './wordpress/wp-content/themes/newTemplate/**/*.php',
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
