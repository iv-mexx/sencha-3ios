//
//  IVViewController.m
//  MyWebApp
//
//  The MIT License (MIT)
//
//  Copyright (c) 2013 Markus Chmelar & Innovaptor OG
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

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
#ifdef PRODUCTION
	NSString *webapIndexPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"production"];
#else 
	#ifdef DEVELOPMENT
	NSString *webapIndexPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"webapp"];
	#else
		#error Undefined Build-Target
	#endif
#endif
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
