//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Pranavi Adusumilli  on 9/13/16.
//  Copyright © 2016 MeaMobile. All rights reserved.
//
import UIKit
import AVFoundation
class PlaySoundsViewController: UIViewController {
    
    var recordedAudioURL: URL!
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    
    
    enum ButtonType: Int {
        case slow, fast, chipmunk, vader, echo, reverb
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton){
        print("Play Sound Button Pressed")
        switch (ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(rate: 100)
        case .vader:
            playSound(rate: 200)
        case .echo:
            playSound(rate: 3.0)
        case .reverb:
            playSound(rate: 200)
        
        }
        configureUI(.playing)
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject){
        print("Stop Button Pressed")
    }
    var recordedAudio : URL!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PlaySoundsViewController loaded")
        setupAudio()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
