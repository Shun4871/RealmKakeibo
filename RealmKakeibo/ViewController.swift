//
//  ViewController.swift
//  RealmKakeibo
//
//  Created by 柘植俊之介 on 2024/09/16.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    
    let realm = try! Realm()
    var items: [Shoppingitem] = []
    
    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ItemTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemCell" )
        items = readItems()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! itemTableViewCell
        let item: Shoppingitem = items[indexPath.row]
        cell.setCell(title: item.title, price: item.price, isMarked: item.isMarked)
        return cell
    }
    func readItems() -> [Shoppingitem]{
        return Array(realm.objects(Shoppingitem.self))
    }
    override func viewWillAppear(_ animated: Bool) {
        items = readItems()
        tableView.reloadData()
    }
}
