//
//  ViewController.swift
//  Video & Audio Player
//
//  Created by om technology on 30/04/19.
//  Copyright © 2019 Panini Academy. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet var viewVideoPlayer: UIView!
    
    @IBOutlet var txtDescription: UITextView!
    
    var avplyerviewController = AVPlayerViewController()
    var avPlayer = AVPlayer()
    
    
    //VoideoPlyer
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let filepath:String = Bundle.main .path(forResource: "3idiotd", ofType: "mp4")!
        let url = NSURL.fileURL(withPath: Bundle.main.path(forResource: "3idiotd", ofType: "mp4")!)
        avPlayer = AVPlayer(url: url)
        avplyerviewController.player=avPlayer
      avplyerviewController.view.frame = viewVideoPlayer.bounds
        viewVideoPlayer .addSubview(avplyerviewController.view)
       txtDescription.text="3 Idiots is a 2009 Indian coming-of-age comedy-drama film co-written (with Abhijat Joshi) and directed by Rajkumar Hirani. Starring Aamir Khan, R. Madhavan, Sharman Joshi, Kareena Kapoor, Boman Irani and Omi Vaidya, the film follows the friendship of three students at an Indian engineering college and is a satire about the social pressures under an Indian education system. The film is narrated through parallel dramas, one in the present and the other ten years in the past. It also incorporated real Indian inventions, namely those created by Remya Jose, Mohammad Idris, Jahangir Painter and Sonam Wangchuk."
        txtDescription.isEditable=false
        avPlayer.play()
        
    }


}

