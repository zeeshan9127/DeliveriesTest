//
//  UIImageView+Extensions.swift
//  SideMenuTemplate
//
//  Created by Zuhair Hussain on 23/04/2018.
//  Copyright © 2018 Ingic. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {
    func setImage(url: String?, placeholder: UIImage? = nil) {
        if let u = url?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            self.kf.setImage(with: URL(string: u), placeholder: placeholder)
        } else {
            self.image = placeholder
        }
    }
}
