//
//  ViewController.swift
//  Buttons
//
//  Created by Fawaz Alzamel on 28/02/2024.
//

import UIKit
import SnapKit

let picture = UIImageView()
let myTextField = UITextField()
let myButton = UIButton(type: .system)

var selectedImage = ""

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(picture)
        view.addSubview(myTextField)
        view.addSubview(myButton)
        
        setUpUI()
    }


    func setUpUI(){
       
        
        picture.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
                make.centerX.equalToSuperview()
                make.trailing.equalToSuperview().offset(-200)
                make.width.height.equalTo(50)
                   
                
            }
        myTextField.snp.makeConstraints { make in
            make.top.equalTo(picture.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            myTextField.placeholder = "Enter image name here"
        }
        
        myButton.snp.makeConstraints { make in
            make.top.equalTo(myTextField.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(50)
            myButton.setTitle("Load Image", for: .normal)
            saveButtonTapped()

        }
        
    }
    

    
    @objc func saveButtonTapped() {
        
        selectedImage = myTextField.text ?? ""
        
        picture.image = UIImage(named: selectedImage)
        
        myButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
}

