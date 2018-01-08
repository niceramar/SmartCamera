//
//  ViewController.swift
//  SmartCamera/Users/Naveen/Documents/Ram/Swift Training/SmartCamera/SmartCamera/SmartCamera/ViewController.swift
//
//  Created by iOS on 08/01/2018.
//  Copyright © 2018 Ram. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        captureVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func captureVideo(){
        
        let captureSession = AVCaptureSession()
        guard let captureDeve = AVCaptureDevice.default(for: .video)
            else {
                return
        }
        guard let input = try? AVCaptureDeviceInput(device: captureDeve) else {return}
        
        captureSession.addInput(input)
        
        captureSession.startRunning()
    }


}

