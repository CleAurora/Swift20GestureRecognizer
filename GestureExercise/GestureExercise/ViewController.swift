//
//  ViewController.swift
//  GestureExercise
//
//  Created by Cleís Aurora Pereira on 16/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var viewTypeGesture: UIView!
    @IBOutlet weak var viewSwipeGesture: UIView!
    @IBOutlet weak var viewLongPressGesture: UIView!
    var count:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(sum))
        viewTypeGesture.addGestureRecognizer(tap)

        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(minus))
        swipe.direction = .down
        viewSwipeGesture.addGestureRecognizer(swipe)

        let long = UILongPressGestureRecognizer(target: self, action: #selector(sum))
        viewLongPressGesture.addGestureRecognizer(long)
    }

    @objc func sum() {
        count += 1
        countLabel.text = "\(count)"
    }

    @objc func minus(){
        count -= 1
        countLabel.text = "\(count)"
    }


}

