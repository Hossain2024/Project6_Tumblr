//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Maliha Hossain on 4/9/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBOutlet weak var TextView: UITextView!
    
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        TextView.text = post.caption.trimHTMLTags()
        
        if let photoURL = post.photos.first?.originalSize.url {
                // Use Nuke to load the image asynchronously
                Nuke.loadImage(with: photoURL, into: ImageView)
            } else {
                print("No photo URL found.")
            }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
