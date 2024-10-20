# Changelog

All notable changes to the Billeto iOS project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial project setup with XcodeGen
- SwiftLint integration for code style enforcement
- SwiftGen integration for generating Swift code from resources
- Xcode Build Server configuration for improved build performance
- Makefile for common development tasks
- Homebrew dependencies management with Brewfile
- Basic project structure:
  - Sources directory for main application code
  - Tests directory for unit tests
  - Config directory for xcconfig files
  - Scripts directory for build scripts
- SwiftyUtils and SwiftyBeaver dependencies added via Swift Package Manager
- Basic ViewController implementation
- Asset catalog and localized strings setup
- Unit test setup with BilletoTests target

### Changed
- Moved from manual Xcode project management to XcodeGen

### Removed
- Removed legacy Xcode project files in favor of XcodeGen
