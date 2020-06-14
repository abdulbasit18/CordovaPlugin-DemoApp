/********* helloWorldPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface helloWorldPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation helloWorldPlugin

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    UIAlertController* alertVC = [UIAlertController alertControllerWithTitle:@"Test" message:echo preferredStyle: UIAlertControllerStyleAlert];
    [self.viewController presentViewController:alertVC animated:true completion:nil];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
