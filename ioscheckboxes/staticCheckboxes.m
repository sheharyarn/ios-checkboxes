//
//  staticCheckboxes.m
//  ioscheckboxes
//
//  Created by Sheharyar Naseer on 09/06/2014.
//  Copyright (c) 2014 Sheharyar.Me. All rights reserved.
//

#import "staticCheckboxes.h"
#import "checkboxButton.h"

checkboxButton *checkbox1;
checkboxButton *checkbox2;

@interface staticCheckboxes ()
@end

@implementation staticCheckboxes
@synthesize label1;
@synthesize label2;

- (void)viewDidLoad {
    [super viewDidLoad];
    checkbox1 = (checkboxButton *) _checkbox1;
    checkbox2 = (checkboxButton *) _checkbox2;
    
    [checkbox1 initWithCheckedImage:@"checkbox_true" uncheckedImage:@"checkedbox_false"];
    [checkbox2 initWithCheckedImage:@"checkbox_true" uncheckedImage:@"checkedbox_false"];
}

- (IBAction)checkbox1Pressed:(id)sender {
    if (checkbox1.isChecked)
        label1.text = @"Checked";
    else
        label1.text = @"Unchecked";
}

- (IBAction)checkbox2Pressed:(id)sender {
    if (checkbox2.isChecked)
        label2.text = @"Checked";
    else
        label2.text = @"Unchecked";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
