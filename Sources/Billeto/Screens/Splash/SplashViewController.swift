//
//  SplashViewController.swift
//  Billeto
//
//  Created by Felix on 20/10/24.
//

import SwiftUI
import SwiftyUtils
import UIKit

class SplashViewController: BaseViewController<SplashView> {
  weak var coordinator: AppCoordinator?

  init(coordinator: AppCoordinator?) {
    self.coordinator = coordinator
    super.init(
      rootView: SplashView(
        name: Bundle.main.appName, version: Bundle.main.appVersion, build: Bundle.main.appBuild))
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
