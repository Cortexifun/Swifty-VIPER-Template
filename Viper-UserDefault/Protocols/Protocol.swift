//
//  Protocol.swift
//  Viper-UserDefault
//
//  Created by Omid Tavanaei on 6/22/19.
//  Copyright © 2019 Omid Tavanaei. All rights reserved.
//
import Foundation
import UIKit

protocol ViewToPresenterProtocol: class{
    
//    var view: PresenterToViewProtocol? {get set}
//    var interactor: PresenterToInteractorProtocol? {get set}
//    var router: PresenterToRouterProtocol? {get set}
//
    func fetchData(dataFetched: String)
    }

    protocol PresenterToViewProtocol: class{
    func printResult()
    }

    protocol PresenterToRouterProtocol: class {
    }

    protocol PresenterToInteractorProtocol: class {
    
    func toInteractor(dataSaved: String)
    
    }

    protocol InteractorToPresenterProtocol: class {
    func textDidSet()
    }

