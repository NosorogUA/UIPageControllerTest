//
//  WindowView.swift
//  UIPageControllerTest
//
//  Created by Ihor Tokalenko on 01.11.2022.
//

import UIKit

class WindowView: UIView {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
   
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    private func configureWindow() {
            //setup page control
        pageControl.pageIndicatorTintColor = UIColor(red: 0.913, green: 0.913, blue: 0.913, alpha: 1)
        pageControl.currentPageIndicatorTintColor = UIColor(red: 0.078, green: 0.227, blue: 0.392, alpha: 1)
        // setup fonts
        // setup button
        button.backgroundColor = UIColor(red: 0.078, green: 0.227, blue: 0.392, alpha: 1)
        button.layer.cornerRadius = 24
        button.clipsToBounds = true
        
    }
    
    func setupView(title: String, image: String, description: String, pagesCount: Int, currentPage: Int, backgroundColor: UIColor) {
        self.backgroundColor = backgroundColor
        pageControl.numberOfPages = pagesCount
        pageControl.currentPage = currentPage
        configureWindow()
        titleLabel.text = title
        descriptionLabel.text = description
        imageView.image = UIImage(named: image)
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
    }
}
