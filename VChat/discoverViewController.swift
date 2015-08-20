//
//  discoverViewController.swift
//  VChat
//
//  Created by 潘新宇 on 15/8/20.
//  Copyright (c) 2015年 潘新宇. All rights reserved.
//

import UIKit

class discoverViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.tabBarController?.tabBar.selectedItem?.selectedImage = UIImage(named: "tabbar_discoverHL")
        self.tabBarController?.tabBar.tintColor = UIColor(red: 116/255, green: 227/255, blue: 67/255, alpha: 1)
        
        var view = UIView()
        view.backgroundColor = UIColor.clearColor()
        self.tableView.tableFooterView = view
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 4
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        switch section{
        case 0 :
            return 1
        case 1 :
            return 2
        case 2 :
            return 2
        case 3 :
            return 2
        default:
            return 2
        }
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 15
        }else{
            return 25
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myCell = discoverTabCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell")
        if indexPath.section == 0{
            if indexPath.row == 0{
                myCell.myLable.text = "朋友圈"
                myCell.myImageView.image = UIImage(named: "ff_IconShowAlbum")
            }
        }else if indexPath.section == 1{
            if indexPath.row == 0{
                myCell.myLable.text = "扫一扫"
                myCell.myImageView.image = UIImage(named: "ff_IconQRCode")
            }else{
                myCell.myLable.text = "摇一摇"
                myCell.myImageView.image = UIImage(named: "ff_IconShake")
            }
        }else if indexPath.section == 2{
            if indexPath.row == 0{
                myCell.myLable.text = "附近的人"
                myCell.myImageView.image = UIImage(named: "ff_IconLocationService")
            }else{
                myCell.myLable.text = "漂流瓶"
                myCell.myImageView.image = UIImage(named: "ff_IconBottle")
            }
        }else if indexPath.section == 3{
            if indexPath.row == 0{
                myCell.myLable.text = "购物"
                myCell.myImageView.image = UIImage(named: "CreditCard_ShoppingBag")
            }else{
                myCell.myLable.text = "游戏"
                myCell.myImageView.image = UIImage(named: "ff_IconShowAlbum")
            }
        }
        
        
        // Configure the cell...

        return myCell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 40
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: 自定义一个discover页面的Cell类

class discoverTabCell:UITableViewCell{
    
    var myLable:UILabel!
    var myImageView:UIImageView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        for view in self.contentView.subviews{
//            (view as! UIView).removeFromSuperview()
//        }
        
        //设置Cell的小箭头
        self.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        myLable = UILabel(frame: CGRectMake(75, 5, 100, 30))
        myLable.text = "1"
        self.addSubview(myLable)
        
        myImageView = UIImageView(frame: CGRectMake(20, 8, 24, 24))
        myImageView.image = UIImage(named: "plugins_FriendNotify")
        self.addSubview(myImageView)
        
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//    
//    override func setSelected(selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//        
//        // Configure the view for the selected state
//    }
    
}
