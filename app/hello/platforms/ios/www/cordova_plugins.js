cordova.define('cordova/plugin_list', function(require, exports, module) {
  module.exports = [
    {
      "id": "info.ios.helloWorldPlugin.helloWorldPlugin",
      "file": "plugins/info.ios.helloWorldPlugin/www/helloWorldPlugin.js",
      "pluginId": "info.ios.helloWorldPlugin",
      "clobbers": [
        "cordova.plugins.helloWorldPlugin"
      ]
    }
  ];
  module.exports.metadata = {
    "cordova-plugin-whitelist": "1.3.4",
    "info.ios.helloWorldPlugin": "1.0.0"
  };
});