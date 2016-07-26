/**
 * Copyright (c) 2015-present, Parse, LLC.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "PFObject.h"
#import "PFTestCase.h"

@interface IncrementUnitTests : PFTestCase

@end

@implementation IncrementUnitTests

- (void)testIncrementWorksOnlyOnNumbers {
    PFObject *object = [PFObject objectWithClassName:@"Test"];
    object[@"score"] = @"foo";

    PFAssertThrowsInvalidArgumentException([object incrementKey:@"score"]);
    PFAssertThrowsInvalidArgumentException([object incrementKey:@"score" byAmount:@1]);
}

@end
