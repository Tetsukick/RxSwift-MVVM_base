import UIKit

extension UIWindow {
    
    func presentedViewControllers() -> [UIViewController] {
        var viewControllers: [UIViewController] = []
        
        guard let rootViewController = rootViewController else {
            return viewControllers
        }
        
        viewControllers.append(rootViewController)
        
        var viewController = rootViewController
        while true {
            guard let presentedViewController = viewController.presentedViewController else {
                return viewControllers
            }
            
            if presentedViewController.isBeingDismissed {
                return viewControllers
            }
            
            viewController = presentedViewController
            viewControllers.append(viewController)
        }
        
        return viewControllers
    }
    
    func dismiss(toType type: UIViewController.Type, animated: Bool, completion: (() -> Swift.Void)? = nil) {
        for presentedViewController in presentedViewControllers().reversed() {
            if Swift.type(of: presentedViewController) == type {
                presentedViewController.dismiss(animated: animated, completion: completion)
                return
            }
            
            if let navigationController = presentedViewController as? UINavigationController,
                let topViewController = navigationController.topViewController {
                if Swift.type(of: topViewController) == type {
                    topViewController.dismiss(animated: animated, completion: completion)
                    return
                }
            }
        }
    }
}
