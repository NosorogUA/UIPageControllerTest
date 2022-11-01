//
//  ViewController.swift
//  UIPageControllerTest
//
//  Created by Ihor Tokalenko on 01.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var scrollView: UIScrollView!
    
    var slidewindows: [SlideWindow] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        setupWindows()
        loadWindows()
    }
    private func setupScrollView() {
        scrollView.delegate = self
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.size.width*3, height: scrollView.frame.size.height)
        scrollView.isPagingEnabled = true
    }
    
    private func setupWindows() {
        let window1 = SlideWindow(title: "Window_1", imageName: "image1", description: "Many - many text here. Bla - bla - bla... End of text)", backgroundColor: UIColor(red: 1, green: 0.816, blue: 0.714, alpha: 1))
        let window2 = SlideWindow(title: "Window_2", imageName: "image2", description: "ohhh... again... Many - many text here. Bla - bla - bla... End of text)", backgroundColor: UIColor(red: 1, green: 0.875, blue: 0.714, alpha: 1))
        let window3 = SlideWindow(title: "Window_3", imageName: "image3", description: "ohhh... again... Many - many text here. Bla - bla - bla... End of text)", backgroundColor: UIColor(red: 0.627, green: 0.847, blue: 0.835, alpha: 1))
        slidewindows = [window1, window2, window3]
    }

    private func  loadWindows() {
        
        for i in 0..<slidewindows.count {
            let slide: WindowView = Bundle.main.loadNibNamed("WindowView", owner: self, options: nil)?.first as! WindowView
            slide.frame = CGRect(x: CGFloat(i)*view.frame.size.width, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height)
            slide.setupView(title: slidewindows[i].title, image: slidewindows[i].imageName, description: slidewindows[i].description, pagesCount: slidewindows.count, currentPage: i, backgroundColor: slidewindows[i].backgroundColor)
            scrollView.addSubview(slide)
        }
    }
    
    func scrollForward(index: Int) {
        scrollView.setContentOffset(CGPoint(x: CGFloat(index)*view.frame.size.width, y: 0), animated: true)
    }
}
extension ViewController: UIScrollViewDelegate {
    
}

