//
//  ViewController.swift
//  AudioRecordingVisualizer
//
//  Created by 05394b3722153a5cad3c776b90c433e6c1f36095 on 12/31/2017.
//  Copyright (c) 2017 05394b3722153a5cad3c776b90c433e6c1f36095. All rights reserved.
//

import UIKit
import AudioRecordingVisualizer
import AudioKitAudioIO
import AudioIO

class ViewController: UIViewController {
  
  private var audioRecordingView: AudioRecordingView!
  private var audioInput: AudioIO.AudioInput!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    setupRecordingView()
    
    AudioSettings.setup()
    AudioSettings.requestPermission { success in
      guard success else {
        print("No permission to play")
        return
      }
      
      self.startRecordingView()
    }
  }
  
  private func setupRecordingView() {
    audioRecordingView = AudioRecordingView()
    audioRecordingView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(audioRecordingView)
    audioRecordingView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    audioRecordingView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    audioRecordingView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    audioRecordingView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
  }
  
  private func startRecordingView() {
    let mic = AudioKitAudioIO.Microphone()
    audioInput = AudioIO.AudioInput(microphone: mic, bufferClosure:{ [unowned self] buffer, bufferSize in
      OperationQueue.main.addOperation {
        self.audioRecordingView.update(buffer: buffer, bufferSize: bufferSize)
      }
    })
    
    self.audioRecordingView.start()
    audioInput.start()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

