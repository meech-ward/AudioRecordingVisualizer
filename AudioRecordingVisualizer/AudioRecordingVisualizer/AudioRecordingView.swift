//
//  AudioRecordingView.swift
//  AudioRecordingVisualizer
//
//  Created by Sam Meech-Ward on 2018-01-03.
//

import Foundation

public class AudioRecordingView: _AudioWaveView {
  
  public func update(buffer: UnsafeMutablePointer<Float>, bufferSize: Int) {
    super._updateBuffer(buffer, arraySize: Int32(bufferSize))
  }
  
  public func start() {
    super._start()
  }
  
  public func stop() {
    super._stop()
  }
}
