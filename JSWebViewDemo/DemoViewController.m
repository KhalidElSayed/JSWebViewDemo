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

@property (nonatomic, strong) JavascriptController *jsController;

@end

@implementation DemoViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [NSApp setDelegate: self];
    
    /* register Javascript Controller for JS */
    self.jsController = [JavascriptController sharedInstance];
    id win = [self.webView windowScriptObject];
    [win setValue:self.jsController forKey:@"JavascriptController"];
	
    /* Ask webKit to load the test.html file from our resources directory. */
	[[self.webView mainFrame] loadRequest:
     [NSURLRequest requestWithURL:
      [NSURL fileURLWithPath:
       [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]]]];
}

- (IBAction)buttonPressed:(id)sender {
    NSArray *args = @[@"OBJC PUSHED"];
    [[self.webView windowScriptObject] callWebScriptMethod:@"javascriptCaller" withArguments:args];
    
}
@end
