//
//  Interactor.swift
//  Viper-UserDefault
//
//  Created by Omid Tavanaei on 6/22/19.
//  Copyright © 2019 Omid Tavanaei. All rights reserved.
//

import UIKit

class Interactor: PresenterToInteractorProtocol {
    
     weak var presenter: InteractorToPresenterProtocol?
    
     func toInteractor(dataSaved: String) {
        UserDefaults.standard.set(dataSaved, forKey: "name")
        presenter?.textDidSet()
    }
    
}

