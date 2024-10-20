import SwiftUI

struct SplashView: View {
  var name: String
  var version: String
  var build: String

  var body: some View {
    VStack {
      Spacer()

      Text(name)
        .font(.largeTitle)
        .fontWeight(.bold)

      Spacer()

      Text(
        "Version \(version) (\(build))"
      )
      .font(.caption)
      .foregroundColor(.gray)
      .padding(.bottom)
    }
  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView(name: "Billeto", version: "1.0.0", build: "1")
  }
}
