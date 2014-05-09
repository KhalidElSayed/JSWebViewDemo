//
//  DemoViewController.m
//  JSWebViewDemo
//
//  Created by Stevenson on 5/4/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "DemoViewController.h"
#import "JavascriptController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [NSApp setDelegate: self];
    
    /* register Javascript Controller for JS */
    JavascriptController *jsController = [JavascriptController sharedInstance];
    id win = [self.webView windowScriptObject];
    [win setValue:jsController forKey:@"JavascriptController"];
	
    /* Ask webKit to load the test.html file from our resources directory. */
	[[self.webView mainFrame] loadRequest:
     [NSURLRequest requestWithURL:
      [NSURL fileURLWithPath:
       [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]]]];
}

@end
