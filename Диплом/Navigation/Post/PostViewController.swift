//
//  PostViewController.swift
//  Navigation
//
//  Created by Ниночка on 14.05.2022.
//

import UIKit



class PostViewController: UIViewController {

    var post: String = "Моя страница"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = post
        self.view.backgroundColor = .systemGray
        postProfile()
        barItem()
    }
    
    private func postProfile() {
        let textPost = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 700))
        textPost.numberOfLines = 20
        textPost.center = view.center
        textPost.text = "Если тебе тяжело, значит ты поднимаешься в гору. Если тебе легко, значит ты летишь в пропасть. Ничего в этой жизни не дается легко. Чтобы достичь своих целей необходимо идти на определенные жертвы — тратить свои силы, время, ограничивать себя в чем-либо. Иногда бывают моменты, когда хочется все бросить и отказаться от мечты. В такие моменты вспомните, как много вы получите, если пойдете дальше и как много потеряете, если сдадитесь. Цена успеха, как правило, меньше, чем цена неудачи."
        view.addSubview(textPost)
        
    }
    
    private func barItem() {
        let barItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(buttonAction))
        self.navigationItem.title = post
        navigationItem.rightBarButtonItem = barItem
    }
    
    @objc private func buttonAction() {
        let infoView = InfoViewController()
        navigationController?.pushViewController(infoView, animated: true)
    }
}

        
