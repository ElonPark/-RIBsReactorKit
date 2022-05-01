///
/// @Generated by Mockolo
///



import CoreLocation
import Foundation
import RIBs
import ReactorKit
import RxRelay
import RxSwift
import UIKit
@testable import RIBsReactorKit


final class RootRoutingMock: RootRouting {
    init() { }
    init(lifecycle: Observable<RouterLifecycle> = PublishSubject<RouterLifecycle>(), interactable: Interactable = InteractableMock(), children: [Routing] = [Routing]()) {
        self.lifecycle = lifecycle
        self.interactable = interactable
        self.children = children
    }


    private(set) var attachMainTabBarRIBCallCount = 0
    var attachMainTabBarRIBHandler: (() -> ())?
    func attachMainTabBarRIB()  {
        attachMainTabBarRIBCallCount += 1
        if let attachMainTabBarRIBHandler = attachMainTabBarRIBHandler {
            attachMainTabBarRIBHandler()
        }
        
    }

    private(set) var cleanupViewsCallCount = 0
    var cleanupViewsHandler: (() -> ())?
    func cleanupViews()  {
        cleanupViewsCallCount += 1
        if let cleanupViewsHandler = cleanupViewsHandler {
            cleanupViewsHandler()
        }
        
    }
    private var lifecycleSubjectKind = 0
    public private(set) var lifecycleSubjectSetCallCount = 0
    public var lifecycleSubject = PublishSubject<RouterLifecycle>() { didSet { lifecycleSubjectSetCallCount += 1 } }
    public var lifecycleReplaySubject = ReplaySubject<RouterLifecycle>.create(bufferSize: 1) { didSet { lifecycleSubjectSetCallCount += 1 } }
    public var lifecycleBehaviorSubject: BehaviorSubject<RouterLifecycle>! { didSet { lifecycleSubjectSetCallCount += 1 } }
    public var _lifecycle: Observable<RouterLifecycle>! { didSet { lifecycleSubjectSetCallCount += 1 } }
    public var lifecycle: Observable<RouterLifecycle> {
        get {
            if lifecycleSubjectKind == 0 {
                return lifecycleSubject
            } else if lifecycleSubjectKind == 1 {
                return lifecycleBehaviorSubject
            } else if lifecycleSubjectKind == 2 {
                return lifecycleReplaySubject
            } else {
                return _lifecycle
            }
        }
        set {
            if let val = newValue as? PublishSubject<RouterLifecycle> {
                lifecycleSubject = val
                lifecycleSubjectKind = 0
            } else if let val = newValue as? BehaviorSubject<RouterLifecycle> {
                lifecycleBehaviorSubject = val
                lifecycleSubjectKind = 1
            } else if let val = newValue as? ReplaySubject<RouterLifecycle> {
                lifecycleReplaySubject = val
                lifecycleSubjectKind = 2
            } else {
                _lifecycle = newValue
                lifecycleSubjectKind = 3
            }
        }
    }
    public private(set) var interactableSetCallCount = 0
    public var interactable: Interactable = InteractableMock() { didSet { interactableSetCallCount += 1 } }
    public private(set) var childrenSetCallCount = 0
    public var children: [Routing] = [Routing]() { didSet { childrenSetCallCount += 1 } }
    public private(set) var loadCallCount = 0
    public var loadHandler: (() -> ())?
    public func load()  {
        loadCallCount += 1
        if let loadHandler = loadHandler {
            loadHandler()
        }
        
    }
    public private(set) var attachChildCallCount = 0
    public var attachChildHandler: ((Routing) -> ())?
    public func attachChild(_ child: Routing)  {
        attachChildCallCount += 1
        if let attachChildHandler = attachChildHandler {
            attachChildHandler(child)
        }
        
    }
    public private(set) var detachChildCallCount = 0
    public var detachChildHandler: ((Routing) -> ())?
    public func detachChild(_ child: Routing)  {
        detachChildCallCount += 1
        if let detachChildHandler = detachChildHandler {
            detachChildHandler(child)
        }
        
    }
}

final class RootListenerMock: RootListener {
    init() { }


}

