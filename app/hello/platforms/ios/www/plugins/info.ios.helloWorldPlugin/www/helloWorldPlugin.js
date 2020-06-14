cordova.define("info.ios.helloWorldPlugin.helloWorldPlugin", function(require, exports, module) {
var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'helloWorldPlugin', 'coolMethod', [arg0]);
};

});
