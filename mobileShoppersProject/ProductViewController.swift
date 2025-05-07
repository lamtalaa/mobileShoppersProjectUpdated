//
//  ProductViewController.swift
//  mobileShoppersProject
//
//  Created by Yassine Lamtalaa on 5/7/25.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var topDescriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var promoMessageLabel: UILabel!
    @IBOutlet weak var bottomDescriptionLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    var product: DataModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //productImageView.image = UIImage(named: (product?.title ?? "") + ".jpg")
        topDescriptionLabel.text = product?.topDescription
        titleLabel.text = product?.title
        promoMessageLabel.text = product?.promoMessage
        bottomDescriptionLabel.text = product?.bottomDescription
        buttonLabel.setTitle(product?.promoMessage, for: .normal)
        
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
