//
//  CardDetailViewController.swift
//  CocoapodTest
//
//  Created by 곽재선 on 2022/07/22.
//

import UIKit
import Lottie

class CardDetailViewController: UIViewController {
    
    var promotionDetail: PromotionDetail?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var benefitConditionLabel: UILabel!
    @IBOutlet weak var benefitDetailLabel: UILabel!
    @IBOutlet weak var benefitDateLabel: UILabel!
    
    @IBOutlet weak var lottieView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = AnimationView(name: "money")
        self.lottieView.contentMode = .scaleAspectFill
        self.lottieView.addSubview(animationView)
        animationView.frame = self.lottieView.bounds
        animationView.loopMode = .loop
        animationView.play()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let detail = promotionDetail else { return }
        self.titleLabel.text = """
        \(detail.companyName)카드 쓰면
        \(detail.amount)만원 드려요
        """
        self.periodLabel.text = detail.period
        self.conditionLabel.text = detail.condition
        self.benefitConditionLabel.text = detail.benefitCondition
        self.benefitDetailLabel.text = detail.benefitDetail
        self.benefitDateLabel.text = detail.benefitDate
    }
}
