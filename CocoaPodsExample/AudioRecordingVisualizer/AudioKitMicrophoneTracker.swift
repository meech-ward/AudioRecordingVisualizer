//
//  AudioKitMicrophoneTracker.swift
//  RecordPiano
//
//  Created by Sam Meech-Ward on 2017-12-03.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import Foundation
import AudioKit

class AudioKitMicorophoneTracker {
  
  let mic:AKMicrophone
  let silence:AKBooster
  let akMicTracker:AKMicrophoneTracker
  
  init() {
    mic = AKMicrophone()
    silence = AKBooster(mic, gain:0)
    akMicTracker = AKMicrophoneTracker()
  }
  
  func start() {
    AudioKit.output = silence
    AudioKit.start()
    akMicTracker.start()
  }
  
  func stop() {
    akMicTracker.stop()
    AudioKit.stop()
  }
  
  deinit {
    stop()
  }
  
}

