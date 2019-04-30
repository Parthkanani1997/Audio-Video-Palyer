

//
//  AudioPlayerViewController.swift
//  Video & Audio Player
//
//  Created by om technology on 30/04/19.
//  Copyright © 2019 Panini Academy. All rights reserved.
//

import UIKit
import AVFoundation
class AudioPlayerViewController: UIViewController {

    @IBOutlet var audioSliderAction: UISlider!
    var audioPlayer = AVAudioPlayer()
    var isplay:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     let filePath = Bundle.main.path(forResource: "Song", ofType: "mp3")
        let url = URL(fileURLWithPath: filePath!)
        audioPlayer = try! AVAudioPlayer.init(contentsOf: url)
        audioSliderAction.minimumValue = 0.0
        audioSliderAction.maximumValue = Float(audioPlayer.duration)
    }
   
    @IBAction func ActionSlider(_ sender: UISlider) {
        audioPlayer.currentTime = TimeInterval(sender.value)
    }
    
    
    
    @IBAction func btnPlayPause(_ sender: UIButton) {
        if audioPlayer .isPlaying {
            audioPlayer .pause()
        }else
        {
            audioPlayer .play()
            Timer .scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(updateprogress), userInfo: nil, repeats: true)
            print(audioPlayer.currentTime)
        }
        
        }
    @objc func updateprogress()
    {
        audioSliderAction.value = Float(audioPlayer.currentTime)
    }
}
