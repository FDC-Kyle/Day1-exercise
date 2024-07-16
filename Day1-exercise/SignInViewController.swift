//
//  SignInViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/16/24.
//

import UIKit

class SignInViewController: UIViewController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let vc = TeacherListViewController()
//        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
