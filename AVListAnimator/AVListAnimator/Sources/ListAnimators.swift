//
//  ListAnimators.swift
//  ListAnimator
//
//  Created by Anand Verma on 05/08/20.
//  Copyright © 2020 ListAnimator. All rights reserved.
//

import Foundation
import UIKit

public enum AnimationType {
    case up
    case down
    case left
    case right
}

public class ListAnimator {
    public class func reload(tableView:UITableView,animationType: AnimationType) {
        tableView.reloadData()
        tableView.layoutIfNeeded()
        let cells = tableView.visibleCells
        var index = 0
        let tableHeight: CGFloat = tableView.bounds.size.height
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            switch animationType {
            case .up:
                cell.transform = CGAffineTransform(translationX: 0, y: -tableHeight)
                break
            case .down:
                cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
                break
            case .left:
                cell.transform = CGAffineTransform(translationX: tableHeight, y: 0)
                break
            case .right:
                cell.transform = CGAffineTransform(translationX: -tableHeight, y: 0)
                break
            }
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)
            index += 1
        }
    }
    
     public class func reload(collectionView:UICollectionView,animationType:AnimationType) {
            collectionView.reloadData()
            collectionView.layoutIfNeeded()
            let cells = collectionView.visibleCells
            var index = 0
            let tableHeight: CGFloat = collectionView.bounds.size.height
            for i in cells {
                let cell: UICollectionViewCell = i as UICollectionViewCell
                switch animationType {
                case .up:
                    cell.transform = CGAffineTransform(translationX: 0, y: -tableHeight)
                    break
                case .down:
                    cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
                    break
                case .left:
                    cell.transform = CGAffineTransform(translationX: tableHeight, y: 0)
                    break
                case .right:
                    cell.transform = CGAffineTransform(translationX: -tableHeight, y: 0)
                    break
                }
                UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0);
                }, completion: nil)
                index += 1
            }
    }
    
}



