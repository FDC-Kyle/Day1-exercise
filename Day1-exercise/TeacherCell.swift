//
//  TeacherCell.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/16/24.
//

import UIKit

class TeacherCell: UITableViewCell {

    @IBOutlet weak var teacherCountry: UILabel!
    @IBOutlet weak var teacherImageView: UIImageView!
    @IBOutlet weak var teacherName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
