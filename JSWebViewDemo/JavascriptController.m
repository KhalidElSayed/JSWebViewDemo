//
//  JavascriptController.m
//  JSWebViewDemo
//
//  Created by Stevenson on 5/4/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "JavascriptController.h"

@implementation JavascriptController

+ (JavascriptController *)sharedInstance
{
    static dispatch_once_t pred;
    static JavascriptController *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[JavascriptController alloc] init];
    });
    
    return shared;
}

- (void)webView:(WebView *)webView windowScriptObjectAvailable:(WebScriptObject *)windowScriptObject
{
    
}

- (void)webView:(WebView *)sender runJavaScriptAlertPanelWithMessage:(NSString *)message
{
    
}

+ (BOOL)isSelectorExcludedFromWebScript:(SEL)selector
{
    if (selector == @selector(logMethod:))
        return NO;
    
    return YES;
}

+ (BOOL)isKeyExcludedFromWebScript:(const char *)property
{
    return YES;
}

+ (NSString *) webScriptNameForSelector:(SEL)sel
{
    NSString * name = @"";
    if (sel == @selector(logMethod:))
        name = @"logMethod";
    
    return name;
}

- (void)logMethod:(NSString*)string
{
    NSLog(@"OUPUT: %@",string);
}

@end
