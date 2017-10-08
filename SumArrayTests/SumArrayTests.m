//
//  SumArrayTests.m
//  SumArrayTests
//
//  Created by Sam Meech-Ward on 2017-10-06.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SumArrayTests : XCTestCase

@end

@implementation SumArrayTests

int sumItems(NSArray *array) {
    
    int sum = 0;
    
    for (int i = 0; i < array.count; i++) {
        if ([array[i] isKindOfClass:[NSNumber class]]) {
            sum = sum + [array[i] intValue];
        } else if ([array[i] isKindOfClass:[NSArray class]]) {
            sum = sum + sumItems(array[i]);
        }
    }
    
    return sum;
}

- (void)testSumArray {
    XCTAssertEqual(sumItems(@[@1, @2, @3, @4, @5]), 15);
    XCTAssertEqual(sumItems(@[@[@1, @2, @[@[@3], @4]], @5, @[]]), 15);
    XCTAssertEqual(sumItems(@[@[@[@[@[@[@[@[@[@[@[@[@[@1]]]]]]]]]]]]]), 1);
}

@end
