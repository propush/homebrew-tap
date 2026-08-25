# Homebrew tap

## Install and run omlxbar

Requires an Apple silicon Mac with macOS 14 or later.

```sh
brew install --cask propush/tap/omlxbar
xattr -dr com.apple.quarantine /Applications/omlxbar.app
open -a omlxbar
```

The second command removes macOS quarantine from omlxbar. The app is ad-hoc
signed and is not notarized by Apple.
