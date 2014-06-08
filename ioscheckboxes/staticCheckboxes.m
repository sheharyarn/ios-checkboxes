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

checkboxButton *multi11;
checkboxButton *multi12;
checkboxButton *multi13;

@interface staticCheckboxes ()
@end

@implementation staticCheckboxes
@synthesize label1;
@synthesize label2;
@synthesize labelmulti;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // First Two Checkboxes
    checkbox1 = (checkboxButton *) _checkbox1;
    checkbox2 = (checkboxButton *) _checkbox2;
    
    [checkbox1 initWithCheckedImage:@"checkbox_true" uncheckedImage:@"checkedbox_false"];
    [checkbox2 initWithCheckedImage:@"checkbox_true" uncheckedImage:@"checkedbox_false"];
    
    
    // Multiple Choice Checkboxes
    multi11   = (checkboxButton *) _multi1_1;
    multi12   = (checkboxButton *) _multi1_2;
    multi13   = (checkboxButton *) _multi1_3;
    
    [multi11 initWithCheckedImage:@"checkbox_true" uncheckedImage:@"checkedbox_false"];
    [multi12 initWithCheckedImage:@"checkbox_true" uncheckedImage:@"checkedbox_false"];
    [multi13 initWithCheckedImage:@"checkbox_true" uncheckedImage:@"checkedbox_false"];
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

// Multiple Choice
- (IBAction)m11pressed:(id)sender {
    labelmulti.text = @"Option 1 Selected";
    [multi12 setChecked:false];
    [multi13 setChecked:false];
}

- (IBAction)m12pressed:(id)sender {
    labelmulti.text = @"Option 2 Selected";
    [multi11 setChecked:false];
    [multi13 setChecked:false];
}
- (IBAction)m13pressed:(id)sender {
    labelmulti.text = @"Option 3 Selected";
    [multi11 setChecked:false];
    [multi12 setChecked:false];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
