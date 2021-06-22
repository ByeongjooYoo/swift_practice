//
//  ViewController.swift
//  View Hierarchy
//
//  Created by 유병주 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 서브뷰 생성
        let frame = CGRect(x: 100, y: 100, width: 240, height: 120)
        let subView = UIView(frame: frame)
        
        // 서브뷰의 색상
        subView.backgroundColor = UIColor.green //서브 뷰의 생상 지정
        
        // 서브뷰 추가하기
        view.addSubview(subView)
    }


}

