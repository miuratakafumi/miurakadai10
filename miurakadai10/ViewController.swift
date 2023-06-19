//
//  ViewController.swift
//  miurakadai10
//
//  Created by 三浦貴文 on 2023/06/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // テーブルビューを作成
    @IBOutlet private weak var cityTableView: UITableView!
    
    // 都道府県の配列を作成
    private let prefectures = ["北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"]
    
    // delegate及びdataSourceの設定
    override func viewDidLoad() {
        super.viewDidLoad()
        cityTableView.delegate = self
        cityTableView.dataSource = self
    }
    
    // テーブルビューに都道府県の数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cityTableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath)
        
        // 都道府県の番号を計算
        let prefecturesNumber = indexPath.row + 1
        
        // 都道府県名と都道府県の番号をセルに代入
        cell.textLabel?.text = prefectures[indexPath.row]
        cell.detailTextLabel?.text = "\(prefecturesNumber)番目の都道府県です。"
        
        // 都道府県名は左揃え、都道府県の番号は右揃えに設定
        cell.textLabel?.textAlignment = .left
        cell.detailTextLabel?.textAlignment = .right
        
        // セルの背景色を設定
        switch indexPath.row % 3 {
        case 0:
            cell.backgroundColor = UIColor.red.withAlphaComponent(0.1)
        case 1:
            cell.backgroundColor = UIColor.green.withAlphaComponent(0.1)
        case 2:
            cell.backgroundColor = UIColor.blue.withAlphaComponent(0.1)
        default:
            break
        }
        
        // セルのフォントサイズを設定
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16)
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 16)
        
        // 作成したセルを表示
        return cell
    }
}

