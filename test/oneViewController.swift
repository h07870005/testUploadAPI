//
//  oneViewController.swift
//  test
//
//  Created by Huang Hao on 2017/12/7.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit




class oneViewController: UIViewController {

    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
      /*  let url = URL(string: "https://sheetsu.com/apis/v1.0bu/ede5251a05b6")
        var urlRequest = URLRequest(url: url!)
        
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let dictionary = ["Name": "Penny", "Price":"10000"]
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
            
        }*/
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
