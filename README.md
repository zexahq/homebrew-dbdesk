# dbdesk Homebrew Tap

Homebrew Cask + Formula for [dbdesk](https://github.com/zexahq/dbdesk).

## macOS

```bash
brew tap zexahq/dbdesk
brew trust zexahq/dbdesk
brew install --cask dbdesk
```

The postflight script automatically clears the quarantine attribute so Gatekeeper won't block the app on launch.

## Linux

```bash
brew tap zexahq/dbdesk
brew install dbdesk
```

Installs the AppImage to your PATH.

## Update

```bash
brew update
brew upgrade dbdesk          # Linux
brew upgrade --cask dbdesk   # macOS
```

The cask and formula are auto-updated daily via GitHub Actions when a new release is published.

## Uninstall

```bash
brew uninstall dbdesk              # Linux
brew uninstall --cask dbdesk       # macOS
brew untap zexahq/dbdesk
```
