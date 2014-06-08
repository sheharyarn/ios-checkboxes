//
//  checkboxButton.m
//  bluewave
//
//  Created by Sheharyar Naseer on 08/06/2014.
//  Copyright (c) 2014 http://sheharyar.me/ - All rights reserved.
//


#import <UIKit/UIKit.h>

@interface checkboxButton : UIButton
@property (nonatomic, retain) UIImage*	notSelectedImage;
@property (nonatomic, retain) UIImage*	selectedImage;

@property (nonatomic, copy) NSString *notSelectedImageName;
@property (nonatomic, copy) NSString *selectedImageName;

- (void) initCheckboxWithOnImageName:(NSString *)onImage offImageName:(NSString *)offImage;
- (void) initWithCheckedImage:(NSString *)onImage uncheckedImage:(NSString *)offImage;
- (void) setOn:(BOOL)newValue;
- (void) setChecked:(BOOL)newValue;
- (BOOL) isOn;
- (BOOL) isChecked;
@end
