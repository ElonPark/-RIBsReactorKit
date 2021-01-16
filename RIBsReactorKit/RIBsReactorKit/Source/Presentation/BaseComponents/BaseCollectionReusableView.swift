//
//  BaseCollectionReusableView.swift
//  RIBsReactorKit
//
//  Created by Elon on 2020/08/18.
//  Copyright © 2020 Elon. All rights reserved.
//

import UIKit

import RxSwift

class BaseCollectionReusableView:
  UICollectionReusableView,
  BaseViewable,
  Reusable,
  HasDisposeBag,
  HasCompositeDisposable,
  DisposablesManageable
{
  
  // MARK: - Properties
  
  var disposeBag: DisposeBag = DisposeBag()
  
  var disposables: CompositeDisposable = CompositeDisposable()
  
  private(set) var didSetupConstraints: Bool = false
  
  // MARK: - Initialization & Deinitialization
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    initialize()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  deinit {
    disposeDisposables()
  }
  
  // MARK: - Inheritance
  
  override func prepareForReuse() {
    super.prepareForReuse()
    resetDisposables()
  }
  
  // MARK: - Layout Constraints
  
  override func updateConstraints() {
    setupConstraintsIfNeeded()
    super.updateConstraints()
  }
  
  // MARK: - Internal methods
  
  func initialize() {
    // Override point
    self.setNeedsUpdateConstraints()
  }
  
  func setupConstraints() {
    // Override here
  }
  
  // MARK: - Private methods
  
  private func setupConstraintsIfNeeded() {
    guard !didSetupConstraints else { return }
    setupConstraints()
    didSetupConstraints = true
  }
}
