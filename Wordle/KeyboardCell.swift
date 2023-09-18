//
//  KeyboardCell.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

class KeyboardCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelContainerView: UIView!
    private var string: String!
    var didSelectString: ((String) -> Void)!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapString))
        contentView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func configure(with string: String) {
        labelContainerView.layer.cornerRadius = 4.0
        labelContainerView.backgroundColor = .gray
        
        /* Exercise 2:
         1. Assign the argument `string` to the `self.string` private property (see line 14)
         
         2. Change the text of the label to the value of the passed in string
         Tip: Command + click into the UILabel type to see its definition and find out what property to set
         Checkpoint: After finishing this exercise, you should now be able to see the keyboard laid out on the screen! If it's not working, check your work on exercises 1 & 2.
         */
        // START YOUR CODE HERE
        // ...
        // END YOUR CODE HERE
        self.string = string
        label.text = string
        
        
    }
    
    @objc private func didTapString() {
        guard let selectedString = self.string else {
            return
        }
        
        // Call the `didSelectString` closure and pass in the selected string
        didSelectString?(selectedString)
    }
}

