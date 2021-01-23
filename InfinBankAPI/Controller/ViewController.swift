//
//  ViewController.swift
//  InfinBankAPI
//
//  Created by Elbek Shaykulov on 1/23/21.
//

import UIKit

class ViewController: UITableViewController {
     
    var currencies = [Currency]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        navigationItem.title = "Infin Bank"
        
        let urlString = "https://dbo.infinbank.com:9443/api/v1/nci/NCIRate"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
            }
          }
       }
 
    func parse(json: Data) {
        let decoder = JSONDecoder()
        if let jsonPetitions = try? decoder.decode(Result.self, from: json) {
            currencies = jsonPetitions.data
            tableView.reloadData()
        }
    }
    
    
    
   //MARK: - TABLEVIEW
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencies.count        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellView
        
        let result = currencies[indexPath.row]
        cell.result = result

        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 15
        cell.clipsToBounds = true
        
        return cell
    }
}

