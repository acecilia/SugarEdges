//
//  Created by acecilia on 10/14/2017.
//  Copyright (c) 2017 acecilia. All rights reserved.
//

import UIKit
import SugarEdges

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subview = UIView()
        subview.backgroundColor = .red
        let stackView = UIStackView(arrangedSubviews: [subview])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = [.left: 30, .right: 5]
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            subview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
    }

}

