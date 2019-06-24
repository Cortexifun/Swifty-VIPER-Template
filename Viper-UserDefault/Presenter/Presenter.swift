//
//  Presenter.swift
//  Viper-UserDefault
//
//  Created by Omid Tavanaei on 6/23/19.
//  Copyright © 2019 Omid Tavanaei. All rights reserved.
//
import UIKit

class Presenter: ViewToPresenterProtocol, InteractorToPresenterProtocol {
   
    
    weak var view: PresenterToViewProtocol?
    var interactor: PresenterToInteractorProtocol?
    weak var router: PresenterToRouterProtocol?
    
    
    func textDidSet() {
        view?.printResult()
    }
  
    
    func fetchData(dataFetched: String) {
        interactor?.toInteractor(dataSaved: dataFetched)
    }
    
    
    
}

