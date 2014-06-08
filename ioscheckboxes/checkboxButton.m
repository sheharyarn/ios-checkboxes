//
//  checkboxButton.m
//  bluewave
//
//  Created by Sheharyar Naseer on 08/06/2014.
//  Copyright (c) 2014 http://sheharyar.me/ - All rights reserved.
//

#import "checkboxButton.h"

@implementation checkboxButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {}
    return self;
}

- (BOOL) isOn      { return self.isSelected; }
- (BOOL) isChecked { return self.isSelected; }

- (void) setOn:     (BOOL)newValue { [self setSelected:newValue]; }
- (void) setChecked:(BOOL)newValue { [self setSelected:newValue]; }

- (void) initWithCheckedImage:(NSString *)onImage uncheckedImage:(NSString *)offImage {
    [self initCheckboxWithOnImageName:onImage offImageName:offImage];
}

- (void) initCheckboxWithOnImageName:(NSString *)onImage offImageName:(NSString *)offImage {
    [self setSelectedImageName:onImage];
    [self setNotSelectedImageName:offImage];
    
    UIImage *image = [UIImage imageNamed:offImage];
    
    [self setBackgroundImage:image forState:UIControlStateApplication];
    [self setImage:image           forState:UIControlStateApplication];
    
    [self setBackgroundColor:      [UIColor clearColor]];
    [self setTintColor:            [UIColor clearColor]];
}

- (void) setSelected:(BOOL)newValue; {
	if (newValue != self.isSelected) {
		[super setSelected: newValue];
		if (newValue)
			[self setImage: _selectedImage forState: UIControlStateNormal];
        else
			[self setImage: _notSelectedImage forState: UIControlStateNormal];
	}
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    [super endTrackingWithTouch:touch withEvent:event];
    if (CGRectContainsPoint(self.bounds,[touch locationInView: self])) {
        self.selected = !self.selected;
        [self sendActionsForControlEvents:UIControlEventValueChanged];
    }
}

-(void) setSelectedImage: (UIImage*) newImage; {
    _selectedImage = newImage;
    if (self.isSelected) {
        //UIButtons don't use their "selected" state, so set the non-selected state.
        [self setImage: _selectedImage forState: UIControlStateNormal];
    }
}

-(void) setNotSelectedImage: (UIImage*) newImage; {
    _notSelectedImage = newImage;
    if (!self.isSelected) {
        [self setImage: _notSelectedImage forState: UIControlStateNormal];
    }
}

- (void) setSelectedImageName: (NSString *) newValue; {
    _selectedImageName = [newValue copy];
    self.selectedImage = [UIImage imageNamed: _selectedImageName];
}

- (void) setNotSelectedImageName: (NSString *) newValue; {
    _notSelectedImageName = [newValue copy];
    self.notSelectedImage = [UIImage imageNamed: _notSelectedImageName];
}

- (void)dealloc {
    self.notSelectedImage = nil;
    self.selectedImage = nil;
}

@end
