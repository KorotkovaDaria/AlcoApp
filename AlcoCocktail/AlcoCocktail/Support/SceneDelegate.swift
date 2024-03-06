

import UIKit

class DependencyManager {
    static func createAlcoCocktailNC() -> UIViewController{
        let alcoCocktailVC        = AlcoCocktailVC()
        alcoCocktailVC.title      = "ALCOCOCKTAIL"
        alcoCocktailVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: Resources.Image.TabBar.alcoCocktail), tag: 0)
        
        return UINavigationController(rootViewController: alcoCocktailVC)
    }
    
    static func createNonAlcoCocktailNC() -> UIViewController{
        let nonAlcoCocktailVC        = NonAlcoCocktailVC()
        nonAlcoCocktailVC.title      = "NONALCOCOCKTAIL"
        nonAlcoCocktailVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: Resources.Image.TabBar.nonAlcoCocktail), tag: 1)

        return UINavigationController(rootViewController: nonAlcoCocktailVC)
    }
    
    static func createFavoriteNC() -> UIViewController{
        let favoriteVC        = FavoriteVC()
        favoriteVC.title      = "FAVORITE"
        favoriteVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: Resources.Image.TabBar.favorite), tag: 2)

        return UINavigationController(rootViewController: favoriteVC)
    }

    
    static func createTabBarController() -> UITabBarController {
        let tabBar = UITabBarController()
        if #available(iOS 15, *) {
            // MARK: Navigation bar appearance
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            navigationBarAppearance.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor : UIColor(named: Resources.Colors.green)!,
                NSAttributedString.Key.font: UIFont(name: Resources.Fonts.cormorantBold, size: 24)!
            ]
            navigationBarAppearance.backgroundColor = UIColor(named: Resources.Colors.orange)
            UINavigationBar.appearance().standardAppearance = navigationBarAppearance
            UINavigationBar.appearance().compactAppearance = navigationBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
            
            // MARK: Tab bar appearance
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            tabBarAppearance.backgroundColor = UIColor(named: Resources.Colors.orange)
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            UITabBar.appearance().standardAppearance = tabBarAppearance
            UITabBar.appearance().tintColor = UIColor(named: Resources.Colors.green)
        }
        tabBar.viewControllers = [createAlcoCocktailNC(),createNonAlcoCocktailNC(),createFavoriteNC()]
        return tabBar
    }
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
               window = UIWindow(frame: windowScene.coordinateSpace.bounds)
               window?.windowScene = windowScene
               window?.rootViewController = DependencyManager.createTabBarController()
               window?.makeKeyAndVisible()
    }
}

