//
//  ProductDetailViewController.swift
//  Day1-exercise
//
//  Created by FDC-KYLE-NC-WEB on 7/17/24.
//

import UIKit

class ProductDetailViewController: UIViewController {

    var product: Product?

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let product = product {
            productName.text = product.name
            productImageView.image = UIImage(imageLiteralResourceName: product.image)

            // Add double tap gesture recognizer to productImageView
            let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(imageDoubleTapped))
            doubleTapGesture.numberOfTapsRequired = 2
            productImageView.addGestureRecognizer(doubleTapGesture)
            productImageView.isUserInteractionEnabled = true // Enable user interaction for tap gesture

            // Add long press gesture recognizer to the entire view
            let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(viewLongPressed))
            view.addGestureRecognizer(longPressGesture)
            
            // Add pan gesture recognizer to the entire view
            let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
            view.addGestureRecognizer(panGesture)
        }
    }

    @objc func imageDoubleTapped() {
        animateHeart()
    }

    // Function to handle long press gesture on the view
    @objc func viewLongPressed(sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            dismiss(animated: true, completion: nil)
        }
    }
    
    // Function to handle pan gesture
    @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        let velocity = gesture.velocity(in: view)

        switch gesture.state {
        case .changed:
            if translation.y > 0 {
                // Pan down (positive vertical translation)
                view.frame.origin.y = translation.y
            }
        case .ended:
            if translation.y > 100 || velocity.y > 500 {
                // Dismiss the view controller if pan gesture ends with downward motion
                dismiss(animated: true, completion: nil)
            } else {
                // Return the view to its original position
                UIView.animate(withDuration: 0.3) {
                    self.view.frame.origin = CGPoint.zero
                }
            }
        default:
            break
        }
    }

    // Function to animate heart
    func animateHeart() {
        let heartImageView = UIImageView(image: UIImage(systemName: "heart.fill"))
        heartImageView.tintColor = UIColor.red
        heartImageView.contentMode = .scaleAspectFit
        heartImageView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        heartImageView.center = productImageView.center
        heartImageView.alpha = 0.0
        view.addSubview(heartImageView)

        UIView.animate(withDuration: 0.5, animations: {
            heartImageView.alpha = 1.0
            heartImageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }, completion: { _ in
            UIView.animate(withDuration: 0.5, animations: {
                heartImageView.alpha = 0.0
                heartImageView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            }, completion: { _ in
                heartImageView.removeFromSuperview()
            })
        })
    }

    @IBAction func goBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
