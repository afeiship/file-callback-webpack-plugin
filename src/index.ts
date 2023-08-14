import fs from 'fs';
import json5 from 'json5';

declare var wx: any;

interface FileCallbackPluginOptions {
  path: string;
  callback: (content: any) => any;
}
class FileCallbackWebpackPlugin {
  private options: FileCallbackPluginOptions;
  private processed: boolean;

  constructor(options: FileCallbackPluginOptions) {
    this.options = options;
    this.processed = false;
  }

  apply(compiler) {
    compiler.hooks.emit.tapAsync('FileCallbackPlugin', (compilation, cb) => {
      const { path, callback } = this.options;
      const extention = path.split('.').pop();
      if (this.processed) return cb();

      try {
        const fileContent = fs.readFileSync(path, 'utf-8');
        const isJSON = extention === 'json' || extention === 'json5';
        const content = isJSON ? json5.parse(fileContent) : fileContent;
        const modifiedContent = isJSON
          ? JSON.stringify(callback(content), null, 2)
          : callback(content);

        fs.writeFileSync(path, modifiedContent);
        this.processed = true;
        cb();
      } catch (error) {
        cb(error);
      }
    });
  }
}

// for commonjs es5 require
if (typeof module !== 'undefined' && module.exports && typeof wx === 'undefined') {
  module.exports = FileCallbackWebpackPlugin;
}

export default FileCallbackWebpackPlugin;
