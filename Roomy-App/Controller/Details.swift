//
//  Details.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/15/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit

class Details: UIViewController {
    @IBOutlet weak var contentTableView: UITableView!
    
    var data = DataService.instance.getData()
    
    var imageToPass: RoomData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let projectCellNibFile = UINib(nibName: "CellDetails", bundle: nil)
        contentTableView.register(projectCellNibFile, forCellReuseIdentifier: "CellDetail")
        
        contentTableView.delegate = self
        contentTableView.dataSource = self

    }
    
}
    
extension Details: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = contentTableView.dequeueReusableCell(withIdentifier: "CellDetail") as? CellDetails {
            let getdata = data[indexPath.row]
            cell.updateCell(roomData: getdata)
            return cell
        } else {
            return CellDetails()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 162
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        imageToPass =  data[indexPath.row]
        performSegue(withIdentifier: "presentSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let descrpChoice = segue.destination as? Description {
           descrpChoice.datapass = self.imageToPass
        }
    }
    
}

extension Details: UITableViewDelegate {
    
}
