//
//  IVViewController.m
//  MyWebApp
//
//  Created by Markus Chmelar on 04.04.13.
//  Copyright (c) 2013 Innovaptor OG. All rights reserved.
//

#import "IVViewController.h"

@interface IVViewController () <UIWebViewDelegate>

@end

@implementation IVViewController
{
	__weak IBOutlet UIWebView *_webView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSString *webapIndexPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"webapp"];
	NSURL *webappUrl = [NSURL fileURLWithPath:webapIndexPath];
	NSURLRequest *request = [[NSURLRequest alloc]initWithURL:webappUrl];
	[_webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
