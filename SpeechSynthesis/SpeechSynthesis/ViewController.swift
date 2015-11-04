//
//  ViewController.swift
//  SpeechSynthesis
//
//  Created by qihaijun on 11/4/15.
//  Copyright © 2015 VictorChee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let synthesizer = AVSpeechSynthesizer()
    let voice = AVSpeechSynthesisVoice(language: "zh_CN")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func say(sender: UIButton) {
        let utterance = AVSpeechUtterance(string: textView.text)
        utterance.voice = voice
        synthesizer.speakUtterance(utterance)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if textView.canResignFirstResponder() {
            textView.resignFirstResponder()
        }
        super.touchesBegan(touches, withEvent: event)
    }
}

