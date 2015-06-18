//
//  UITest.m
//  iPulguita
//
//  Created by Jorge Melgosa de la Fuente on 10/3/15.
//  Copyright (c) 2015 Jorge Melgosa de la Fuente. All rights reserved.
//

#import "UITest.h"

@implementation UITest

- (void)beforeAll {
    //[tester tapViewWithAccessibilityLabel:@"nuevoPedido"];
}

- (void) test000AñadirUnidadJamon {
    [tester waitForViewWithAccessibilityLabel:@"masJamon"];
    [tester waitForTimeInterval: 5];
    [tester waitForViewWithAccessibilityLabel:@"masJamon"];
}

@end
