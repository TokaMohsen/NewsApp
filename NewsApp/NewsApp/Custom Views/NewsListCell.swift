//
//  NewsListCell.swift
//  NewsApp
//
//  Created by ToqaMohsen on 8/2/19.
//  Copyright © 2019 Toqa. All rights reserved.
//

import UIKit

class NewsListCell: UITableViewCell {

    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var headLineLabelText: UILabel!
    @IBOutlet var publishDateLabelText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func cellConfigruration(newsTitle : String , publishDate : String , newsImageUrl : String ) {
        self.headLineLabelText.text = newsTitle
        self.publishDateLabelText.text = publishDate
    }

}
