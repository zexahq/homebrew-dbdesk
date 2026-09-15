# dbdesk Homebrew Tap

Homebrew Cask + Formula for [dbdesk](https://github.com/zexahq/dbdesk).

## macOS

```bash
brew install --cask zexahq/dbdesk/dbdesk
```

DBDesk currently requires Apple silicon and is not Developer ID signed or notarized. The cask verifies the release checksum, then clears the quarantine attribute so macOS can launch it.

## Linux

```bash
brew install zexahq/dbdesk/dbdesk
```

Installs the AppImage to your PATH.

## Update

```bash
brew update
brew upgrade zexahq/dbdesk/dbdesk          # Linux
brew upgrade --cask zexahq/dbdesk/dbdesk   # macOS
```

The cask and formula are auto-updated daily via GitHub Actions when a new release is published.

## Uninstall

```bash
brew uninstall zexahq/dbdesk/dbdesk              # Linux
brew uninstall --cask zexahq/dbdesk/dbdesk       # macOS
brew untap zexahq/dbdesk
```
