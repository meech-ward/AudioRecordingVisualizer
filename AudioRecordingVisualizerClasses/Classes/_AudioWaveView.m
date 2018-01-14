//
//  Dummy.m
//  RecordPiano
//
//  Created by Sam Meech-Ward on 2017-11-29.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "_AudioWaveView.h"
#import "_ZLSinusWaveView.h"

@interface _AudioWaveView()

/**
 Use a OpenGL based plot to visualize the data coming in
 */
@property (nonatomic,weak) _ZLSinusWaveView *audioPlot;

@end

@implementation _AudioWaveView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    _ZLSinusWaveView *plot = [[_ZLSinusWaveView alloc] init];
    [plot setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:plot];
    
    plot.backgroundColor = [UIColor whiteColor];
    plot.color = [UIColor magentaColor];
    plot.alpha = 0.0;
    
    [[plot.leftAnchor constraintEqualToAnchor:self.leftAnchor constant: -100.0] setActive:YES];
    [[plot.rightAnchor constraintEqualToAnchor:self.rightAnchor constant: 100.0] setActive:YES];
    [[plot.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    [[plot.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    self.audioPlot = plot;
    
    // Plot type
    plot.plotType        = EZPlotTypeBuffer;
    // Fill
    plot.shouldFill      = YES;
    // Mirror
    plot.shouldMirror    = YES;
    
//    plot.dampingFactor = 0.97 ;
//    plot.frequency = 2.0;
//    plot.phaseShift = -0.1;//;-0.25;
    plot.waveWidth = 4;
}


- (void)_updateBuffer:(float *)buffer arraySize:(int)arraySize {
  [self.audioPlot updateBuffer:buffer withBufferSize:arraySize];
}

- (void)_start {
    // TODO: Make the audio plot work
  self.audioPlot.alpha = 1.0;
}

- (void)_stop {
    self.audioPlot.alpha = 0.0;
}

@end
