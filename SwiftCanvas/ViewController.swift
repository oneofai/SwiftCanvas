//
//  ViewController.swift
//  SwiftCanvas
//
//  Created by Sun on 2020/5/15.
//  Copyright © 2020 Sun. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import NSObject_Rx
import WebKit
import RxWebKit
import Eureka


class ViewController: UIViewController {

    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = 
        
    }
        //        label = UILabel(frame: .zero)
//        label?.backgroundColor = UIColor.systemPink.withAlphaComponent(0.3)
//        label?.numberOfLines = 0
//        label?.font = .systemFont(ofSize: 14)
//        view.addSubview(label!)
//
//        let content = "根据《某某某某管理办法》（试行）、《某某某某某某办法》（试行）和《某某某某某某办法》（征求意见稿）规定，您需完全同意已后，才可使用本地查询、搜索等功能功能" as NSString
//
//        let attribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]
//
//        let rect = content.boundingRect(with: CGSize(width: UIScreen.main.bounds.width, height: 0), options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: attribute, context: nil)
//        label?.text = content as String
//        label?.frame = rect
//        label?.center = view.center
//        print(rect)
    
        
//        webView?.rx.evaluateJavaScript("document.body.scrollHeight").takeUntil(webView!.rx.didFinishLoad).subscribe(onNext: { (height) in
//            print("scrollHeight: \(height ?? 0)")
//        }).disposed(by: rx.disposeBag)
        
        // 是否在加载
//        webView?.rx.loading.subscribe(onNext: { (loading) in
//            print("loading: \(loading)")
//        }).disposed(by: rx.disposeBag)
        
        
//        webView?.rx.evaluateJavaScript("document.body.scrollHeight").takeUntil(webView!.rx.loading).subscribe(onNext: { (height) in
//            print("scrollHeight: \(height ?? 0)")
//        }).disposed(by: rx.disposeBag)
        
//
        
//        form +++ Section("第一组")
//                <<< NameRow() {
//                    $0.title = "姓名"
//                    $0.placeholder = "输入姓名"
//                }
//                <<< PhoneRow() {
//                    $0.title = "手机号"
//                    $0.placeholder = "输入手机号"
//                }
//             +++ Section("第二组")
//                <<< DateRow() {
//                    $0.title = "日期"
//                    $0.value = Date(timeIntervalSince1970: 946656000)
//                    }
        
//        segmentedControl?.rx.selectedSegmentIndex.subscribe(onNext: { (index) in
//            print(index)
//        }).disposed(by: rx.disposeBag)
//    }
        
//        datePicker = UIDatePicker(frame: .zero)
        
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        let current = formatter.date(from: formatter.string(from: Date()))
//        datePicker?.date = current!
//
//    }
//        view.backgroundColor = .white
//
//        actionButton = UIButton(type: .custom)
//        actionButton?.setTitle("确认", for: .normal)
//        actionButton?.backgroundColor = .systemTeal
//        actionButton?.layer.cornerRadius = 18
//        actionButton?.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(actionButton!)
//
//        actionButton?.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        actionButton?.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        actionButton?.widthAnchor.constraint(equalToConstant: 60).isActive = true
//        actionButton?.heightAnchor.constraint(equalToConstant: 36).isActive = true
//    }
    
//
//    override func viewDidLoad() {
//    super.viewDidLoad()
        
         
//        contentView = ContentView.loadFromNib()
//        view.addSubview(contentView!)
//
//        contentView?.topAnchor.constraint(equalTo: view.topAnchor)
//        let config = WKWebViewConfiguration()
//        let ucc = WKUserContentController()
//        ucc.add(self, name: "callNativeHandler")
//        config.userContentController = ucc
//
//        webView = WKWebView(frame: .zero, configuration: config)
//        webView?.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(webView!)
//
//        webView?.snp.makeConstraints({ (maker) in
//            maker.edges.equalToSuperview()
//        })
//
//        let path = Bundle.main.path(forResource: "example", ofType: "html")
//        let url = URL(fileURLWithPath: path!)
//        webView?.loadFileURL(url, allowingReadAccessTo: url)
//        label = UILabel(frame: .zero)
//        label?.text = "这是一段测试文本,这是一段测试文本,这是一段测试文本,这是一段测试文本,这是一段测试文本"
//        label?.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.4)
//        label?.numberOfLines = 0
//        label?.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label!)
//        label?.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
//        label?.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
//        label?.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
//        let shimmerView = FBShimmeringView(frame: CGRect(x: 0, y: 0, width: 240, height: 200))
//        shimmerView.backgroundColor = .clear
//        shimmerView.center = view.center
//        view.addSubview(shimmerView)
//
//        let contentView = UIView(frame: shimmerView.bounds)
//        contentView.backgroundColor = .clear
//        view.addSubview(contentView)
        
//        let shimmerLayer = FBShimmeringLayer()
//        shimmerLayer.frame = CGRect(x: 0, y: 0, width: 240, height: 200)
//        shimmerLayer.backgroundColor = UIColor.clear.cgColor
//        shimmerLayer.position = view.center
//        view.layer.addSublayer(shimmerLayer)
//
//        shimmerLayer.shimmeringSpeed = 180
//        shimmerLayer.shimmeringAnimationOpacity = 0.1
//        shimmerLayer.shimmeringOpacity = 1.0
//        shimmerLayer.shimmeringPauseDuration = 1.0
//        shimmerLayer.isShimmering = true
//
//        let startPoint = CGPoint(x: 20, y: 20)
//        let controlPoint1 = CGPoint(x: 80, y: 70)
//        let controlPoint2 = CGPoint(x: 120, y: 100)
//        let controlPoint3 = CGPoint(x: 150, y: 70)
//        let controlPoint4 = CGPoint(x: 180, y: 160)
//        let endPoint = CGPoint(x: 220, y: 180)
//
//        let linePath = UIBezierPath()
//        linePath.move(to: startPoint)
//        linePath.addLine(to: controlPoint1)
//        linePath.addLine(to: controlPoint2)
//        linePath.addLine(to: controlPoint3)
//        linePath.addLine(to: controlPoint4)
//        linePath.addLine(to: endPoint)
//
//        let lineLayer = CAShapeLayer()
//        lineLayer.lineWidth = 10
//        lineLayer.strokeColor = UIColor.black.cgColor
//        lineLayer.path = linePath.cgPath
//        lineLayer.fillColor = nil
//
//        shimmerLayer.contentLayer = lineLayer
        
//    }
    
    
}

