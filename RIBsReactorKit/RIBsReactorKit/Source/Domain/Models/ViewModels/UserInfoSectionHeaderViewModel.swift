//
//  UserInfoSectionHeaderViewModel.swift
//  RIBsReactorKit
//
//  Created by Elon on 2020/08/18.
//  Copyright © 2020 Elon. All rights reserved.
//

import Foundation

protocol UserInfoSectionHeaderViewModel {
  var title: String { get }
}

struct UserInfoSectionHeaderViewModelImpl: UserInfoSectionHeaderViewModel, Equatable {
  var title: String
}
