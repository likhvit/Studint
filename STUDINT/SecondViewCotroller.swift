import Foundation
import UIKit


class SecondViewController: UIViewController {
    
    var annotation: CustomAnnotation!
    
    @IBOutlet weak var LocationPic: UIImageView!
 
    @IBOutlet weak var infoLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = annotation.title!
        LocationPic.image = UIImage(named: annotation.title!)
        
           }
  
    @IBAction func videoLink(_ sender: Any) {
        annotation.video.absoluteURL = ""
    }
    
}
