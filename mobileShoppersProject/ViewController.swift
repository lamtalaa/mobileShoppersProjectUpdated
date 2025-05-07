//
//  ViewController.swift
//  mobileShoppersProject
//
//  Created by Hasan Zaidi on 5/7/25.
//

import UIKit

protocol ViewControllerProtocol {
    func refreshUI(with response: [DataModel])
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var products: [DataModel] = []
    let networkManager = NetworkManager()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        networkManager.performApiCall()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard
            let v
                = sb.instantiateViewController(withIdentifier: "ProductViewController") as? ProductViewController
        else { return }
        v.product = products[indexPath.row]
//        v.modalPresentationStyle = .fullScreen
//        present(v, animated: true)
        self.navigationController?.pushViewController(v, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProductTableViewCell
        
        let product = products[indexPath.row]
        
        //cell?.imageViewLabel.image = UIImage(named: products.image) // work on loading image
        cell?.textFieldLabel.text = product.title
        
        return cell ?? UITableViewCell()
    }

}

extension ViewController: ViewControllerProtocol {
    func refreshUI(with response: [DataModel]) {
        DispatchQueue.main.async {
            self.products = response
            self.tableView.reloadData()
        }
    }
}
