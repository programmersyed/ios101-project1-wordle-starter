//
//  ViewController.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var wordsCollectionView: UICollectionView!
  @IBOutlet weak var keyboardCollectionView: UICollectionView!

  private var boardController: BoardController!
  private var keyboardController: KeyboardController!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()

        boardController = BoardController(collectionView: wordsCollectionView)
        keyboardController = KeyboardController(collectionView: keyboardCollectionView)
      
        // Exercise 3: Assign a closure to the `didSelectString` property of `keyboardController`
        keyboardController.didSelectString = { [weak self] selectedString in
            guard let self = self else { return }
            
            if selectedString == DELETE_KEY {
                self.boardController.deleteLastCharacter()
            } else {
                self.boardController.enter( selectedString)
            }
        }
    }
}
