//
//  TeacherDetailsViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/16/24.
//

import UIKit

protocol TeacherDetailsViewControllerDelegate{
    func didReportTeacher()
}

class TeacherDetailsViewController: UIViewController {
    var delegate:TeacherDetailsViewControllerDelegate?
    var teacher: Teacher?

    @IBOutlet weak var teacherGender: UILabel!
    @IBOutlet weak var teacherName: UILabel!
    @IBOutlet weak var teacherCountry: UILabel!
    @IBOutlet weak var teacherAge: UILabel!
    @IBOutlet weak var teacherSubject: UILabel!
    @IBOutlet weak var imageViewProfile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewProfile.layer.masksToBounds = true
        imageViewProfile.layer.cornerRadius = imageViewProfile.frame.height/2
        
        navigationController?.navigationBar.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor: UIColor.white // Set your desired color here
            ]
        if let teacher = teacher {
            teacherName.text = teacher.name
            teacherCountry.text = teacher.country
            teacherAge.text = teacher.age
            teacherGender.text = teacher.gender
            teacherSubject.text = teacher.subject
            imageViewProfile.image = UIImage(imageLiteralResourceName: teacher.image)
                }
    }
}
