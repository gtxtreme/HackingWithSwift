//
//  DetailViewController.swift
//  Project1
//
//  Created by gtxtreme on 05/02/22.
//

import UIKit

class DetailViewController: UIViewController {

    var selectedImage: String?
    var selectedImageIndex: Int = 0
    var totalImageCount: Int = 0
    
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(selectedImageIndex + 1) of \(totalImageCount)"
        navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
