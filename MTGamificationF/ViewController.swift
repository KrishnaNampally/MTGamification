//
//  ViewController.swift
//  MTGamificationF
//
//  Created by SKY on 23/06/21.
//

import UIKit
import MTGamification
class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    var conView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Gamification
       // Game.loadScratchCard(controller: self, mobileNumber: "51046", language: "EN", complition: complitionHandler(action:))
        Game.gameList(controller: self, mobileNumber: "49028", language: "EN", complition: complitionHandler(action:))
    }
    
    
    
    @IBAction func refreshApi() {
        //Game.loadScratchCard(controller: self, mobileNumber: "51046", language: "EN", complition: complitionHandler(action:))
        Game.gameList(controller: self, mobileNumber: "49028", language: "EN", complition: complitionHandler(action:))
    }
    
    
    func complitionHandler(action: GameAction) {
        switch action {
        case .dismiss:
            print(" complitionHandler controller dismissed")
        case .onSuccess:
            print("complitionHandler on success")
        case .listView(let view):
            self.conView?.removeFromSuperview()
            self.conView = nil
            self.conView = view
            loadGameListView(self.conView!)
        case .leaderBoardView(let view, let height):
            loadLeaderBoard(view: view, height: height)
        case .info(_, _, _):
            break
        @unknown default:
            break
        }
    }
    
    fileprivate func loadGameListView(_ view: (UIView)) {
        DispatchQueue.main.async {
            view.frame = CGRect(x: 30, y: 40, width: UIScreen.main.bounds.width-60, height: (UIScreen.main.bounds.width-40)/2)
            view.center = self.view.center
             self.view.addSubview(view)
        }
    }
    
    func loadLeaderBoard(view: UIView, height: CGFloat) {
        DispatchQueue.main.async {
            view.frame = self.containerView.bounds
            view.frame.size.height = height
            self.containerView.addSubview(view)
        }
    }

}

