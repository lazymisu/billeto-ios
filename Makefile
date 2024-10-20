install: bootstrap swiftgen xcodegen

bootstrap: 
	brew bundle

xcodegen:
	xcodegen generate

swiftgen: 
	swiftgen