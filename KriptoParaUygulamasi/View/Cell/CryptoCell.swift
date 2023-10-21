//
//  CryptoCell.swift
//  KriptoParaUygulamasi
//
//  Created by Münevver Elif Ay on 21.10.2023.
//

import Foundation
import UIKit


class CryptoCell: UITableViewCell {
    static let cellIdentifier = "CryptoCell"
    
    var cellData: Crypto? {
        didSet {
            guard let cellData = cellData else {return}
            currencyLabel.text = cellData.currency
            priceLabel.text = cellData.price
            
        }
    }
    let currencyLabel: UILabel = {
        let currencyLabel = UILabel()
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.font = UIFont.boldSystemFont(ofSize: 16)
        currencyLabel.textColor = UIColor(red: 0, green: 122/255, blue: 1, alpha: 1)
        return currencyLabel
    }()
    
    let priceLabel: UILabel = {
        let priceLabel = UILabel()
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.font = UIFont.systemFont(ofSize: 16)
        return priceLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(currencyLabel)
        addSubview(priceLabel)
        setupConstraits()


    }

    func setupConstraits() {
        NSLayoutConstraint.activate([
            currencyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            currencyLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            priceLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
