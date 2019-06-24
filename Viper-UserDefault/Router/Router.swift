//
//  Router.swift
//  Viper-UserDefault
//
//  Created by Omid Tavanaei on 6/23/19.
//  Copyright © 2019 Omid Tavanaei. All rights reserved.
//

import UIKit

class Router: PresenterToRouterProtocol {

    static func create(title: String?) -> UIViewController {
    
    let view = View()
    let presenter = Presenter()
    let interactor = Interactor()
    let wireframe = Router()
    
    view.presenter = presenter
    presenter.interactor = interactor
    presenter.view = view
    presenter.router = wireframe
    interactor.presenter = presenter
    return view
    }

}
