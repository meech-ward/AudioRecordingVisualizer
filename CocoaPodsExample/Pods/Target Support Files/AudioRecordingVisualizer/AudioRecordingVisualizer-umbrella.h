#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AudioRecordingVisualizer.h"
#import "_AudioWaveView.h"
#import "_ZLSinusWaveView.h"

FOUNDATION_EXPORT double AudioRecordingVisualizerVersionNumber;
FOUNDATION_EXPORT const unsigned char AudioRecordingVisualizerVersionString[];

