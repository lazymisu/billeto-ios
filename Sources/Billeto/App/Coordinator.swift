import UIKit

protocol Coordinator: AnyObject {
  var navigationController: UINavigationController { get set }
  var childCoordinators: [Coordinator] { get set }

  func start()
}

class AppCoordinator: Coordinator {
  var navigationController: UINavigationController
  var childCoordinators: [Coordinator] = []

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    showSplashScreen()
  }

  private func showSplashScreen() {
    let splashViewController = SplashViewController(coordinator: self)
    navigationController.pushViewController(splashViewController, animated: true)
  }
}
