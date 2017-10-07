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
    // Sum all the numbers in the array
    return 0;
}

- (void)testSumArray {
    XCTAssertEqual(sumItems(@[@1, @2, @3, @4, @5]), 15);
    XCTAssertEqual(sumItems(@[@[@1, @2, @[@[@3], @4]], @5, @[]]), 15);
}

@end
