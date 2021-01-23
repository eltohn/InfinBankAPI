//
//  CellView.swift
//  InfinBankAPI
//
//  Created by Elbek Shaykulov on 1/23/21.
//

import UIKit
class CellView: UITableViewCell {

    
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var sellCourseLabel: UILabel!
    @IBOutlet weak var buyCourseLabel: UILabel!    
    
    var result: Currency! {
        didSet {
            currencyLabel.text = result.currency
            sellCourseLabel.text = "Курс продажи: \(result.sellCourse) сум"
            buyCourseLabel.text =  "Курс продажи: \(result.buyCourse) сум"
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
}
