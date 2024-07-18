//
//  TeacherListViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/16/24.
//

import UIKit

struct Teacher{
    let name : String
    let country : String
    let age : String
    let subject : String
    let gender : String
    let image : String
}

class TeacherListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var teachers: [Teacher] = [
        Teacher(name:"Eyan", country: "USA", age: "29", subject:"Programming", gender: "Male", image: "eyan" ),
        Teacher(name:"Glynvile", country: "Philippines", age: "28", subject:"Programming", gender: "Male", image: "glynvile" )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TeacherCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "TeacherCell")

        let tableHeaderView = TableViewHeadwer(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 200))
        self.tableView.tableHeaderView = tableHeaderView
        // Do any additional setup after loading the view.
    }
}

extension TeacherListViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teachers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherCell", for: indexPath) as? TeacherCell {
            cell.accessoryType = .disclosureIndicator
            cell.teacherImageView.image = UIImage(named: teachers[indexPath.row].image)
            cell.teacherName.text = teachers[indexPath.row].name
            cell.teacherCountry.text = teachers[indexPath.row].country
            return cell
        }
        return UITableViewCell()
            
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Show alert before deleting
            let alert = UIAlertController(title: "Confirmation", message: "Are you sure you want to remove this item?", preferredStyle: .alert)
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive) { action in
                // Perform deletion
                self.teachers.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            alert.addAction(yesAction)
            
            let noAction = UIAlertAction(title: "No", style: .cancel)
            alert.addAction(noAction)
            
            // Present the alert
            present(alert, animated: true, completion: nil)
        }
    }
    // this code is for navigation to teacher details
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedTeacher = teachers[indexPath.row]
        let vc = TeacherDetailsViewController()
        vc.teacher = selectedTeacher
        self.navigationController?.pushViewController(vc, animated: true)
        }
}
