//
//  DemoViewController.h
//  JSWebViewDemo
//
//  Created by Stevenson on 5/4/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface DemoViewController : NSViewController
@property (weak) IBOutlet WebView *webView;

- (IBAction)buttonPressed:(id)sender;
@end
