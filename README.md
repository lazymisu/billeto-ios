# Billeto iOS App

Billeto is an iOS application built using Swift and UIKit. This project uses various tools and best practices for iOS development.

## Project Setup

### Prerequisites

- Xcode 15.4 or later
- iOS 13.0+ deployment target
- [Homebrew](https://brew.sh/) (for managing dependencies)

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/your-username/billeto-ios.git
   cd billeto-ios
   ```

2. Install dependencies:
   ```
   make install
   ```
   This command will run `brew bundle` to install required tools, generate code using SwiftGen, and set up the Xcode project using XcodeGen.

## Project Structure

- `Sources/`: Contains the main application code
  - `Common/`: Shared code across the app
  - `Billeto/`: Main app target source files
  - `Generated/`: Auto-generated files (e.g., from SwiftGen)
- `Tests/`: Contains unit tests
- `Config/`: Configuration files, including `.xcconfig` files
- `Scripts/`: Utility scripts for the build process

## Development Tools

- [XcodeGen](https://github.com/yonaskolb/XcodeGen): Used to generate Xcode project files
- [SwiftLint](https://github.com/realm/SwiftLint): Enforces Swift style and conventions
- [SwiftGen](https://github.com/SwiftGen/SwiftGen): Generates Swift code for resources (e.g., assets, strings)
- [Xcode Build Server](https://github.com/SolaWing/xcode-build-server): Improves build performance

## Configuration

- The project uses `.xcconfig` files for managing build configurations (Debug and Release)
- Environment-specific settings are managed in `Config/xcconfig/` directory

## Dependency Management

This project uses Swift Package Manager for managing dependencies. The main dependencies are:

- [SwiftyUtils](https://github.com/tbaranes/SwiftyUtils)
- [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver)

## Building and Running

Open the `Billeto.xcodeproj` file in Xcode and run the project. Make sure to select the appropriate scheme (Debug or Release) before building.

## Testing

The project includes a `BilletoTests` target for unit tests. Run tests in Xcode using `Cmd+U` or through the test navigator.

## Code Style and Linting

This project uses SwiftLint to enforce code style. The rules are defined in the `.swiftlint.yml` file. SwiftLint runs automatically during the build process.
