//
//  AudioKitManager.swift
//  AudioKitAudioProcessor
//
//  Created by Sam Meech-Ward on 2017-11-25.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import Foundation
import AudioKit
import AVFoundation

struct AudioSettings {
    
    static var recordingSession = AVAudioSession.sharedInstance()
    
    static func setup() {
        // Clean tempFiles !
        AKAudioFile.cleanTempDirectory()
        
//        AKSettings.bufferLength = .medium

        do {
            try AKSettings.setSession(category: .playAndRecord, with: .allowBluetoothA2DP)
        } catch {
            AKLog("Could not set session category.")
        }
        
        AKSettings.defaultToSpeaker = true
    }
    
    static func requestPermission(completion: @escaping (Bool) -> (Void)) {
            
        do {
            try recordingSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
            try recordingSession.setActive(true)
        } catch let error {
            print("Failed??? \(error)")
            completion(false)
        }
        
        let currentPermission = recordingSession.recordPermission()
        
        if currentPermission == .granted {
            completion(true)
            return
        }
        if currentPermission == .denied {
            completion(false)
            return
        }
        
        recordingSession.requestRecordPermission() { allowed in // [unowned self] allowed in
            DispatchQueue.main.async {
                completion(allowed)
            }
        }
        
    }
}
