//
//  CustomCellTableViewCell.swift
//  table2-exercise
//
//  Created by Default User on 3/11/24.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    
    let primaryLabel = UILabel()
    let secondaryLabel = UILabel()
    let img = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        primaryLabel.textAlignment = NSTextAlignment.left
        primaryLabel.font = UIFont.boldSystemFont(ofSize: 30)
        primaryLabel.textColor = UIColor.black
        
        secondaryLabel.textAlignment = NSTextAlignment.left
        secondaryLabel.font = UIFont.boldSystemFont(ofSize: 16)
        secondaryLabel.textColor = UIColor.black
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(primaryLabel)
        contentView.addSubview(secondaryLabel)
        contentView.addSubview(img)
        
    }
    
    override func layoutSubviews() {
        
        var f = CGRect(x: 100, y: 5, width: 460, height: 30)
        primaryLabel.frame = f
        
        f = CGRect(x: 100, y: 40, width: 460, height: 20)
        secondaryLabel.frame = f
        
        f = CGRect(x: 5, y: 5, width: 45, height: 45)
        img.frame = f
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
