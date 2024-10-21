//
//  detailsVC.swift
//  simpsonbook
//
//  Created by neodiyadin on 15.08.2024.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var joblabel: UILabel!
    
    var selectedsimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelabel.text = selectedsimpson?.name
        joblabel.text = selectedsimpson?.job
        imageview.image = selectedsimpson?.image
        
    }
    


}
