import Foundation
import UIKit
import AVFoundation
import AVKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
        }
        
        @IBAction func playVideoTwo(_ sender: Any) {
            play(videoName: "demo")
        }
        
        func play(videoName: String) {
            //Make sure the video exists (dont forget to link to it in the build phases)
            guard let path = Bundle.main.path(forResource: videoName, ofType:"mp4") else {
                debugPrint("video.m4v not found")
                return
            }
            
            //Create the player
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            
            //Created the player controller
            let playerController = AVPlayerViewController()
            
            //assign the player to the player property of the controller
            playerController.player = player
            
            //present the player controller and play the video
            present(playerController, animated: true) {
                player.play()
            }
        }

    }

