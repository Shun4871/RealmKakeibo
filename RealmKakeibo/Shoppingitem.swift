//
//  Shoppingitem.swift
//  RealmKakeibo
//
//  Created by 柘植俊之介 on 2024/09/16.
//

import Foundation
import RealmSwift

class Shoppingitem: Object{
    @Persisted var title: String = ""
    @Persisted var price: Int = 0
    @Persisted var isMarked: Bool = false
}
