//
//  TrendingCell.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/27/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation
import UIKit

class TrendingCell: UICollectionViewCell {
    
    static let reuseId: String = "TrendingCell"
    
    var trending: Trending?{
        didSet{
            if let trending = self.trending {
                imageView.image = UIImage(named: "\(trending.image)_land.jpg")
                titleLabel.text = trending.title
            }
        }
    }
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "adastra_land.jpg")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Ad Astra"
        label.textColor = UIColor(named: "textColor")
        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 20, weight: .bold))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupCell() {
        let gradientView = UIView(frame: CGRect(x: 0, y: self.frame.height / 4 , width: self.frame.width, height: self.frame.height / 2))
        gradientView.layer.cornerRadius = 20
        let gradient = CAGradientLayer()
        gradient.frame = gradientView.frame
        gradient.colors = [UIColor.clear, UIColor.black.cgColor]
        
        gradientView.layer.insertSublayer(gradient, at: 0)
        
        contentView.addSubview(self.imageView)
        self.imageView.addSubview(gradientView)
        contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
        imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.9),
        imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 1),
        
        titleLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10),
        titleLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
        titleLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
        titleLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
}
