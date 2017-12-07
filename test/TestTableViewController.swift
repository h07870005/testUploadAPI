//
//  TestTableViewController.swift
//  test
//
//  Created by Huang Hao on 2017/12/7.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return Class.count
        }
        return Price.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return Class[row]
        }
        return Price[row]
    }
    
    
    @IBOutlet weak var FinishBT: UIButton!
    
    
    func upload(){

    }
    
    var Name: String?
    var Phonenumber: String?
    var EMail: String?
    var ClassNAme: String?
    var PRice: String?
    
    @IBAction func FinishBT(_ sender: Any) {
        var name = String(nameLabel.text!)
        var PhoneNumber = String(PhoneNumberLabel.text!)
        var Email = String(EmailLabel.text!)
        var ClassName = String(ClassTF.text!)
        var Price = String(PriceTF.text!)
        var text = String(TextLabel.text!)

        let url = URL(string: "https://sheetsu.com/apis/v1.0bu/ede5251a05b6")
        var urlRequest = URLRequest(url: url!)
        
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let dictionary = ["Name": name, "Price": Price, "PhoneNumber": PhoneNumber, "ClassName": ClassName,"E-mail": Email, "Text": text]
        do {
            let data = try  JSONSerialization.data(withJSONObject: dictionary, options: [])
            let task = URLSession.shared.uploadTask(with: urlRequest, from: data, completionHandler: { (retData, res,
                err) in
                if let returnData = retData, let dic = (try? JSONSerialization.jsonObject(with: returnData)) as? [String:String] {
                    print(dic)
                }
            })
            task.resume()
        }
        catch{
            
        }
        
        
        
        
        
        
        
        
    }
    
        
        
        
    
    @IBOutlet weak var PriceTF: UITextField!
    @IBOutlet weak var ClassTF: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    
    @IBOutlet weak var PhoneNumberLabel: UITextField!
    @IBOutlet weak var EmailLabel: UITextField!
    @IBOutlet weak var TextLabel: UITextField!
    
    
    let Class = ["文組生的iOS App","彼得潘的iOS App"]
    let Price = ["9500","16000"]
    

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
