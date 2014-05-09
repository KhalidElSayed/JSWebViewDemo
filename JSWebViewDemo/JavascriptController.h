//
//  JavascriptController.h
//  JSWebViewDemo
//
//  Created by Stevenson on 5/4/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface JavascriptController : NSObject

/* shared Instance */
+ (JavascriptController *)sharedInstance;

/* WebFrameLoadDelegate method */
- (void)webView:(WebView *)webView windowScriptObjectAvailable:(WebScriptObject *)windowScriptObject;

/* WebUIDelegate method */
- (void)webView:(WebView *)sender runJavaScriptAlertPanelWithMessage:(NSString *)message;

/* WebScripting methods */
+ (BOOL)isSelectorExcludedFromWebScript:(SEL)selector;
+ (BOOL)isKeyExcludedFromWebScript:(const char *)property;
+ (NSString *) webScriptNameForSelector:(SEL)sel;


/* JS shared methods */
- (void)logMethod:(NSString*)string;

@end
