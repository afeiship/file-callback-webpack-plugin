# file-callback-webpack-plugin
> File callback webpack plugin.

[![version][version-image]][version-url]
[![license][license-image]][license-url]
[![size][size-image]][size-url]
[![download][download-image]][download-url]

## installation
```shell
npm install @jswork/file-callback-webpack-plugin
```

## usage
```js
const { defineConfig } = require('@vue/cli-service');
const FileCbPlugin = require('@jswork/file-callback-webpack-plugin');
const { envname } = require('@jswork/ci-kits');
const ENVS = require('./.env-cmdrc');
const currentEnvs = ENVS[envname()];

// usage
const manifestReplace = new FileCbPlugin({
  path: 'src/manifest.json',
  callback: (content) => {
    nx.set(
      content,
      'mp-weixin.appid',
      JSON.parse(currentEnvs['VUE_APP_APP_ID'])
    );
    return content;
  }
});

module.exports = defineConfig({
  configureWebpack: (config) => {
    const plugins = config.plugins;
    config.devtool = 'source-map';
    config.plugins = [...plugins, manifestReplace];
  }
});
```

## license
Code released under [the MIT license](https://github.com/afeiship/file-callback-webpack-plugin/blob/master/LICENSE.txt).

[version-image]: https://img.shields.io/npm/v/@jswork/file-callback-webpack-plugin
[version-url]: https://npmjs.org/package/@jswork/file-callback-webpack-plugin

[license-image]: https://img.shields.io/npm/l/@jswork/file-callback-webpack-plugin
[license-url]: https://github.com/afeiship/file-callback-webpack-plugin/blob/master/LICENSE.txt

[size-image]: https://img.shields.io/bundlephobia/minzip/@jswork/file-callback-webpack-plugin
[size-url]: https://github.com/afeiship/file-callback-webpack-plugin/blob/master/dist/file-callback-webpack-plugin.min.js

[download-image]: https://img.shields.io/npm/dm/@jswork/file-callback-webpack-plugin
[download-url]: https://www.npmjs.com/package/@jswork/file-callback-webpack-plugin
