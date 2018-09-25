//
//  DeliveryCell.swift
//  Deliveries
//
//  Created by Muhammad Zeeshan on 17/09/2018.
//  Copyright © 2018 Muhammad Zeeshan. All rights reserved.
//

import UIKit

class DeliveryCell : UITableViewCell {
    
    var objDelivery : Delivery? {
        didSet {
            deliveryImage.setImage(url: objDelivery?.imageUrl, placeholder: #imageLiteral(resourceName: "camera"))
            delieryDescriptionLabel.text = objDelivery?.description
        }
    }
    
    private let delieryDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    private let deliveryImage : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "placeholder"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(deliveryImage)
        addSubview(delieryDescriptionLabel)
        
        deliveryImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 0, width: 90, height: 0, enableInsets: false)
        delieryDescriptionLabel.anchor(top: topAnchor, left: deliveryImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
