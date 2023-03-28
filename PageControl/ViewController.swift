//
//  ViewController.swift
//  PageControl
//
//  Created by 林祔利 on 2023/3/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var career: UILabel!
    @IBOutlet weak var Sement: UISegmentedControl!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var NBAStarImage: UIImageView!
    
    var image = ["kobe","james","melo"]
    
    var name = ["Kobe Bryant","LeBron James","Carmelo Anthony"]
    
    var NBAcareer = ["主打得分後衛位置。柯比1996年直接從高中進入NBA，並效力洛杉磯湖人20年，被公認是史上最偉大球員之一。柯比替洛杉磯湖人贏得5座NBA總冠軍，並入選18次全明星賽、15次NBA最佳陣容、12次NBA最佳防守陣容，以及票選為2008年NBA最有價值球員與2次NBA總決賽最有價值球員。柯比共獲得NBA得分王兩次，並位居聯盟生涯例行賽得分第四名和生涯季後賽得分第四名。",
        "詹姆士被公認是NBA歷史上最偉大球員之一，並經常在史上最偉大籃球員的爭論中被拿來與麥可·喬丹相互比較。詹姆士曾效力過克里夫蘭騎士和邁阿密熱火，是NBA歷史上第一位率領三支不同球隊奪冠，且都拿下NBA總決賽最有價值球員的球員。詹姆士曾挺進NBA總決賽十次，其中從2011年到2018年連續八年率領球隊挺進總決賽。詹姆士擁有四座NBA總冠軍、四次NBA最有價值球員、四次總決賽最有價值球員以及兩枚奧運金牌。同時詹姆士是NBA歷史得分王與第四高總助攻數的球員。詹姆士職業生涯已經入選NBA年度第一隊十三次、NBA年度防守第一隊五次以及全明星賽十九次，並獲選為全明星賽最有價值球員三次。",
                     "安東尼連續十次入選全明星陣容，且六次入選年度最佳陣容。從2004年至2010年效力於丹佛金塊的八年生涯中，，安東尼連續七年帶領金塊隊打進季後賽，並贏得了兩次分區冠軍。2009年時，安東尼率領金塊隊首次闖入西區決賽。2011年，他在季中交易截止日前被金塊交易到紐約尼克。2014年1月24日，安東尼在對上夏洛特山貓的比賽中，攻下了職業生涯最高的62分，改寫了麥迪遜廣場花園單場最高得分紀錄。安東尼也是6名至少獲得24000分、6000個籃板、2500次助攻、1000次搶斷和1000個三分球的球員之一。"]
    
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Update()
        
    }
    func Update(){
        NBAStarImage.image = UIImage(named: image[index])
        nameLabel.text = name[index]
        career.text = NBAcareer[index]
        pageControl.currentPage = index
        Sement.selectedSegmentIndex = index
    }
    
    @IBAction func selectSement(_ sender: Any) {
        index = Sement.selectedSegmentIndex
        Update()
    }
    
    @IBAction func selectPage(_ sender: Any) {
        index = pageControl.currentPage
        Update()
    }
    
    
    
    @IBAction func pre(_ sender: Any) {
        index -= 1
        if index < 0 {
            index = name.count - 1
        }
        Update()
    }
    
    @IBAction func next(_ sender: Any) {
        index += 1
        if index == name.count {
            index = 0
        }
        Update()
    }
    
}

