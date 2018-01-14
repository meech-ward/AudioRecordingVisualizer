//
//  Dummy.h
//  RecordPiano
//
//  Created by Sam Meech-Ward on 2017-11-29.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface _AudioWaveView : UIView 

- (void)_start;
- (void)_stop;

- (void)_updateBuffer:(float *)buffer arraySize:(int)arraySize;

@end

NS_ASSUME_NONNULL_END
