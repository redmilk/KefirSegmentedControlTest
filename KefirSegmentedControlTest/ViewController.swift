//
//  ViewController.swift
//  KefirSegmentedControlTest
//
//  Created by Artem on 3/14/17.
//  Copyright © 2017 ApiqA. All rights reserved.
//

import UIKit
import LUNSegmentedControl

class ViewController: UIViewController, LUNSegmentedControlDataSource, LUNSegmentedControlDelegate {
    
    @IBOutlet weak var segmentedControl: LUNSegmentedControl!
    let arr: [String] = {
        var arr = [String]()
        arr.append("One")
        arr.append("Two")
        arr.append("Three")
        return arr
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        segmentedControl.transitionStyle = .slide
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfStates(in segmentedControl: LUNSegmentedControl!) -> Int {
        return arr.count
    }
    
    func segmentedControl(_ segmentedControl: LUNSegmentedControl!, gradientColorsForStateAt index: Int) -> [UIColor]! {
        switch (index) {
        case 0:
            return [UIColor(colorLiteralRed: 160/255.0, green: 223 / 255.0, blue: 56 / 255.0, alpha: 1.0), UIColor(colorLiteralRed: 177/255.0, green: 255/255.0, blue: 0/255.0, alpha: 1.0)]
        case 1:
            return [UIColor(colorLiteralRed: 78 / 255.0, green: 252/255.0, blue: 208/255.0, alpha: 1.0), UIColor(colorLiteralRed: 51/255.0, green: 199/255.0, blue: 0/255.0, alpha: 1.0)]
        case 2:
            return [UIColor(colorLiteralRed: 178/255.0, green: 0/255.0, blue: 235/255.0, alpha: 1.0), UIColor(colorLiteralRed: 233/255.0, green: 0/255.0, blue: 147/255.0, alpha: 1.0)]
        default:
            break
        }
        return nil
    }
    
    func segmentedControl(_ segmentedControl: LUNSegmentedControl!, attributedTitleForStateAt index: Int) -> NSAttributedString! {
        let attributes : [String : Any] = [NSFontAttributeName : UIFont(name: "HelveticaNeue", size: 16)!, NSForegroundColorAttributeName : UIColor.red]
        let str = NSAttributedString(string: self.arr[index], attributes: attributes)
        return str
    }
    
    func segmentedControl(_ segmentedControl: LUNSegmentedControl!, attributedTitleForSelectedStateAt index: Int) -> NSAttributedString! {
        let attributes : [String : Any] = [NSFontAttributeName : UIFont(name: "HelveticaNeue-Bold", size: 16)!, NSForegroundColorAttributeName : UIColor.red]
        let str = NSAttributedString(string: self.arr[index], attributes: attributes)
        return str
    }
    
    func segmentedControl(_ segmentedControl: LUNSegmentedControl!, didScrollWithXOffset offset: CGFloat) {
        /*
        CGFloat rightDistance = (self.backgroundScrollView.contentSize.width - width) * 0.75;
        CGFloat backgroundScrollViewOffset = leftDistance + ((offset / maxOffset) * (self.backgroundScrollView.contentSize.width - rightDistance - leftDistance));
        width = self.view.frame.size.width;
        leftDistance = -width * 0.75;
        rightDistance = width * 0.5;
        CGFloat rectangleScrollViewOffset = leftDistance + ((offset / maxOffset) * (self.rectangleScrollView.contentSize.width - rightDistance - leftDistance));
        [self.rectangleScrollView setContentOffset:CGPointMake(rectangleScrollViewOffset, 0)];
        [self.backgroundScrollView setContentOffset:CGPointMake(backgroundScrollViewOffset,0)];
        
        
        let maxOffset: CGFloat = self.segmentedControl.frame.size.width / CGFloat(self.segmentedControl.statesCount * (self.segmentedControl.statesCount - 1))
        let width: CGFloat = self.view.frame.size.width * 0.7
        let leftDistance: CGFloat = (self.backgroundScrollView.contentSize.width - width) * 0.25 */
    }
}









