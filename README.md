# Homebrew tap

## Install and run omlxbar

Requires an Apple silicon Mac with macOS 14 or later.

```sh
brew install --cask propush/tap/omlxbar
open -a omlxbar
```

omlxbar is ad-hoc signed and is not notarized by Apple, so macOS blocks its
first launch. After the launch attempt, open **System Settings → Privacy &
Security**, click **Open Anyway** for omlxbar, then confirm **Open**. This grants
an exception for omlxbar without disabling Gatekeeper for other apps.
