//
//  ViewController.swift
//  hustle-mode
//
//  Created by Shubh on 5/22/18.
//  Copyright © 2018 theGreedyChoiceTest. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let audio_path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let audio_url = URL(fileURLWithPath: audio_path)
        do {
            player = try AVAudioPlayer(contentsOf: audio_url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    

    @IBAction func powerBtnPressed(_ sender: Any) {
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        cloudHolder.isHidden = false
        
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 441)
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
        }
    }
    

}

