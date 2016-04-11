import Foundation
import UIKit

class MemeViewerController: UIViewController {

    var meme : Meme! = nil

    override func viewDidLoad() {
        view.backgroundColor = UIColor.whiteColor()

        // Hide navigation bar when tapped.
        navigationController?.hidesBarsOnTap = true

        // Do not extend layout for navigation controller.
        edgesForExtendedLayout = .None

        let imageView = UIImageView(frame: view.frame)
        imageView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        imageView.contentMode = .ScaleAspectFit
        imageView.image = meme.memeImage
        view.addSubview(imageView)
    }
}
