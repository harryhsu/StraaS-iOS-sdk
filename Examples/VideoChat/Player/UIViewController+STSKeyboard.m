//
//  UIViewController+STSKeyboard.m
//  StraaS
//
//  Created by Jerome Lee on 13/6/16.
//  Copyright (c) 2017 StraaS.io. All rights reserved.
//

#import "UIViewController+STSKeyboard.h"

@implementation UIViewController (STSKeyboard)

- (void)sts_registerForKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sts_keyboardWillBeShown:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sts_keyboardWillBeHidden:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)sts_unregisterForKeyboardNotifications {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
}

- (void)sts_keyboardWillBeShown:(NSNotification*)notification
{
    [self sts_updateLayoutWithKeyboard:YES notification:notification];
}

- (void)sts_keyboardWillBeHidden:(NSNotification*)notification
{
    [self sts_updateLayoutWithKeyboard:NO notification:notification];
}

- (void)sts_updateLayoutWithKeyboard:(BOOL)keyboard notification:(NSNotification *)notification
{
    NSAssert(NO, @"Please override this method");
}

@end
