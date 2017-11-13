//
//  ViewController.swift
//  mp3PlayerSample
//
//  Created by alumincan on 2017/11/13.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?
    let url = Bundle.main.url(forResource: "ring/hello", withExtension: "mp3")

    @IBAction func buttonPlay(_ sender: UIButton) {
        print("press play")
        do {

                self.audioPlayer = try AVAudioPlayer(contentsOf: self.url!)
                audioPlayer?.play()
        } catch  {
            print( error )
        }

    }

    @IBAction func buttonPuase(_ sender: UIButton) {
        print("press pause")
        if (audioPlayer!.isPlaying) {
            audioPlayer?.pause()
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

