import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        let path = Bundle.main.path(forResource: "NoiNayCoAnh", ofType: "mp4")
        let player = AVPlayer(url: URL(fileURLWithPath: path!))
        
        let playerController = AVPlayerViewController()
        playerController.player = player
        
        self.addChildViewController(playerController)
        self.view.addSubview(playerController.view)
       // playerController.view.frame = self.view.frame
        
        playerController.view.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        
        player.play()

    }
    
    
    
    
    

}







