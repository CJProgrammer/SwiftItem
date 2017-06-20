//
//  ViewController.swift
//  ClassAndStruct
//
//  Created by CJ on 2017/6/19.
//  Copyright © 2017年 CJ. All rights reserved.
//

import UIKit

class ClassCoder {
    var name = "IAMCJ"
    var age = 0
    init(tmpName:String = "IAMCJ",tmpAge:Int = 18) {
        name = tmpName
        age = tmpAge
    }
}

extension ClassCoder {
    func modifyCoderName(newName:String) {
        self.name = newName
    }
}

class ClassSwiftCoder:ClassCoder {
    
}

struct StructCoder {
    var name = "IAMCJ"
    var age = 0
}

extension StructCoder {
    mutating func modifyCoderName(newName:String) {
        self.name = newName
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var structCoder = StructCoder(name:"CJ",age:18)
        var structCoder = StructCoder()
        structCoder.name = "CJ"
        structCoder.age = 18
        
        structCoder.modifyCoderName(newName: "帅")
        
        var structCoder1 = structCoder
        structCoder1.name = "NOTCJ"
        structCoder1.age = 100
        
        print("structname=\(structCoder.name),structage=\(structCoder.age),structname1=\(structCoder1.name),structage1=\(structCoder1.age)")
        
        print("")
        
        let classCoder = ClassCoder()
        classCoder.name = "CJ"
        classCoder.age = 18
        
        let classCoder1 = classCoder
        classCoder1.name = "NOTCJ"
        classCoder1.age = 100
        
        print("classname=\(classCoder.name),classage=\(classCoder.age),classname1=\(classCoder1.name),classage1=\(classCoder1.age)")
        
        
        let swiftCoder = ClassSwiftCoder.init(tmpName:"CJ", tmpAge: 18)
        
        swiftCoder.name = "CJ"
        swiftCoder.name = "18"
        swiftCoder.modifyCoderName(newName: "帅")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    


}






