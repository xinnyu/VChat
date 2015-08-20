//
//  HeaderSearchView.swift
//  VChat
//
//  Created by 潘新宇 on 15/8/20.
//  Copyright (c) 2015年 潘新宇. All rights reserved.
//

import UIKit

class HeaderSearchView: UIView,UITextFieldDelegate {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
//    override func drawRect(rect: CGRect) {
//        
//        frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 30)
//        
//
//    }
    var search:UITextField!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)


    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        search = UITextField(frame: CGRectMake(7, 7, UIScreen.mainScreen().bounds.width - 10, 26))
        search.delegate = self
        search.placeholder = "搜索"
        //search.textAlignment = NSTextAlignment.Center
        search.font = UIFont.systemFontOfSize(13)
        //键盘框样式
        search.borderStyle = UITextBorderStyle.RoundedRect
        //键盘return键类型
        search.returnKeyType = UIReturnKeyType.Search
        self.addSubview(search)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool{
        search.resignFirstResponder()
        println("a")
        return true
    }


}
