//
//  ViewController.swift
//  samplePickerView
//
//  Created by Eriko Ichinohe on 2017/06/01.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

// プロトコル UIPickerViewDataSource,UIPickerViewDelegate を追加
class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var myPicker: UIPickerView!
    
    // dataを配列で用意する(メンバ変数)
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ローカル変数
        var a = 1
        
        //今myPickerに指示するコードを書いてる場所を指定
        myPicker.delegate = self
        myPicker.dataSource = self
    }
    
    // ピッカービューの列数を決定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // ピッカービューの行数を決定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // 配列の要素の個数と同じ数を設定
        return teaList.count
    }
    
    // ピッカービューに表示する文字の設定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        teaList[0] //ダージリン
//        teaList[1] //アールグレイ
        return teaList[row]
    }
    
    //ピッカービューが選択されたときに発動
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //選択された項目をデバッグエリアに表示
        print(teaList[row])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

