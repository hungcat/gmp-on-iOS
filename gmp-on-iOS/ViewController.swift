//
//  ViewController.swift
//  gmp-on-iOS
//
//  Created by NTT on 2018/02/26.
//  Copyright © 2018年 NTT. All rights reserved.
//

import UIKit
import GMP

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello World!")
        
        var a = mpz_t()
        
        __gmpz_init(&a) // 初期化
        // 文字列の形で任意精度整数をセットする
        __gmpz_set_str(&a, "48410242354393281104234213124421033", 10)
        
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label.text = String(cString: __gmpz_get_str(nil, 10, &a)!)
        label.numberOfLines = 0
        label.sizeToFit()
        self.view.addSubview(label)
        // 後処理
        __gmpz_clear(&a)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

