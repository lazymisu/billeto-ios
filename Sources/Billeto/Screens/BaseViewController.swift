import SwiftUI
import UIKit

class BaseViewController<Content: View>: UIViewController {
  private let rootView: Content

  init(rootView: Content) {
    self.rootView = rootView
    super.init(nibName: nil, bundle: nil)
  }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    setupHostingController()
  }

  private func setupHostingController() {
    let hostingController = UIHostingController(rootView: rootView)
    addChild(hostingController)
    view.addSubview(hostingController.view)
    hostingController.view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
      hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])

    hostingController.didMove(toParent: self)
  }
}
