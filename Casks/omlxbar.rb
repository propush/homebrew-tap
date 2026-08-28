cask "omlxbar" do
  version "1.1.0"
  sha256 "2971953c5bc63f66003e1c0cc21edc31237507573c441a5c5b40765124abb4db"

  url "https://github.com/propush/omlxbar/releases/download/v#{version}/omlxbar-#{version}-arm64.zip"
  name "omlxbar"
  desc "Menu bar status and statistics for oMLX"
  homepage "https://github.com/propush/omlxbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "omlxbar.app"

  zap trash: "~/Library/Preferences/com.pushkin.omlxbar.plist"

  caveats <<~EOS
    Before first launch, remove macOS quarantine from omlxbar and start it:

      xattr -dr com.apple.quarantine /Applications/omlxbar.app
      open -a omlxbar
  EOS
end
