//
//  UserInformationRouter.swift
//  RIBsReactorKit
//
//  Created by Elon on 2020/06/23.
//  Copyright © 2020 Elon. All rights reserved.
//

import RIBs

protocol UserInformationInteractable: Interactable {
  var router: UserInformationRouting? { get set }
  var listener: UserInformationListener? { get set }
}

protocol UserInformationViewControllable: ViewControllable {
  // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class UserInformationRouter:
  ViewableRouter<UserInformationInteractable, UserInformationViewControllable>,
  UserInformationRouting
{

  // TODO: Constructor inject child builder protocols to allow building children.
  override init(interactor: UserInformationInteractable, viewController: UserInformationViewControllable) {
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}
