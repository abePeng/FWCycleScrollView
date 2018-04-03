//
//  ViewController.swift
//  FWCycleScrollView
//
//  Created by xfg on 2018/3/28.
//  Copyright © 2018年 xfg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let adArray = ["ad_1", "ad_2", "ad_3"]
    let adArray2 = ["ad_4", "ad_5", "ad_6"]
    let adArray3 = ["ad_1", "ad_2", "ad_3", "ad_4", "ad_5", "ad_6", "ad_7"]
    
    lazy var scrollView: UIScrollView = {
        
        let scrollView = UIScrollView.init(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        scrollView.backgroundColor = UIColor.clear
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.bounces = false
        scrollView.contentSize = CGSize(width: self.view.bounds.width, height: self.view.bounds.height * 1.5)
        return scrollView
    }()
    
    lazy var cycleScrollView1: FWCycleScrollView = {
        
        let cycleScrollView = FWCycleScrollView.cycleImage(localizationImageNameArray: adArray, frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: 180))
        return cycleScrollView
    }()
    
    lazy var cycleScrollView2: FWCycleScrollView = {
        
        let cycleScrollView = FWCycleScrollView.cycleImage(frame: CGRect(x: 0, y: self.cycleScrollView1.frame.maxY + 20, width: self.view.frame.width, height: 140))
        cycleScrollView.localizationImageNameArray = adArray2
        cycleScrollView.autoScrollTimeInterval = 2.0
        cycleScrollView.pageControlAliment = .right
        cycleScrollView.pageControlType = .classic
        cycleScrollView.scrollDirection = .vertical
        cycleScrollView.currentPageDotColor = UIColor.red
        cycleScrollView.pageDotColor = UIColor.white
        // cycleScrollView.pageControlDotSize = CGSize(width: 20, height: 10)
        cycleScrollView.pageControlMargin = 15
        cycleScrollView.itemDidClickedBlock = { (index) in
            print("当前点击了第\(index + 1)个广告位")
        }
        cycleScrollView.itemDidScrollBlock = { (index) in
            // print("当前轮播到了第\(index + 1)个广告位")
        }
        return cycleScrollView
    }()
    
    lazy var cycleScrollView3: FWCycleScrollView = {
        
        let cycleScrollView = FWCycleScrollView.cycleImage(localizationImageNameArray: adArray, frame: CGRect(x: 0, y: self.cycleScrollView2.frame.maxY + 20, width: self.view.frame.width, height: 180))
        cycleScrollView.setupDotImage(pageDotImage: UIImage(named: "pageControlDot")!, currentPageDotImage: UIImage(named: "pageControlCurrentDot")!)
        cycleScrollView.autoScrollTimeInterval = 2.5
        return cycleScrollView
    }()
    
    lazy var cycleScrollView4: FWCycleScrollView = {
        
        let cycleScrollView = FWCycleScrollView.cycleImage(localizationImageNameArray: adArray, frame: CGRect(x: 0, y: self.cycleScrollView3.frame.maxY + 20, width: self.view.frame.width, height: 140))
        cycleScrollView.currentPageDotEnlargeTimes = 1.2
        cycleScrollView.customDotViewType = .hollow
        cycleScrollView.pageDotColor = UIColor.white
        cycleScrollView.currentPageDotColor = UIColor.white
        cycleScrollView.pageControlDotSize = CGSize(width: 10, height: 10)
        cycleScrollView.autoScrollTimeInterval = 2.0
        return cycleScrollView
    }()
    
    lazy var cycleScrollView5: FWCycleScrollView = {
        
        let cycleScrollView = FWCycleScrollView.cycleImage(localizationImageNameArray: adArray, frame: CGRect(x: 0, y: self.cycleScrollView4.frame.maxY + 20, width: self.view.frame.width, height: 140))
        cycleScrollView.currentPageDotEnlargeTimes = 1.0
        cycleScrollView.customDotViewType = .solid
        cycleScrollView.pageDotColor = UIColor.lightGray
        cycleScrollView.currentPageDotColor = UIColor.yellow
        cycleScrollView.pageControlDotSize = CGSize(width: 15, height: 15)
        cycleScrollView.autoScrollTimeInterval = 2.0
        return cycleScrollView
    }()
    
    
    lazy var cycleScrollView22: FWCycleScrollView = {
        
        let cycleScrollView = FWCycleScrollView.cycleImage(frame: CGRect(x: 0, y: self.cycleScrollView1.frame.maxY + 20, width: self.view.frame.width, height: 180))
        cycleScrollView.localizationImageNameArray = adArray2
        cycleScrollView.autoScrollTimeInterval = 2.0
        cycleScrollView.pageControlAliment = .right
        cycleScrollView.pageControlType = .classic
        cycleScrollView.scrollDirection = .vertical
        cycleScrollView.itemDidClickedBlock = { (index) in
            print("当前点击了第\(index + 1)个广告位")
        }
        cycleScrollView.itemDidScrollBlock = { (index) in
            //            print("当前轮播到了第\(index + 1)个广告位")
        }
        return cycleScrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.scrollView)
        
        self.scrollView.addSubview(self.cycleScrollView1)
        self.scrollView.addSubview(self.cycleScrollView2)
        self.scrollView.addSubview(self.cycleScrollView3)
        self.scrollView.addSubview(self.cycleScrollView4)
        self.scrollView.addSubview(self.cycleScrollView5)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

