cask "omlxbar" do
  version "1.2.2"
  sha256 "f4b5550f625148e2de3fede918676e7940d59f4b5adf0336a5a28cca7a2ae7df"

  url "https://github.com/propush/omlxbar/releases/download/v#{version}/omlxbar-#{version}-arm64.zip"
  name "omlxbar"
  desc "Menu bar status and statistics for oMLX"
  homepage "https://github.com/propush/omlxbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "omlxbar.app"

  zap trash: "~/Library/Preferences/com.pushkin.omlxbar.plist"

  caveats <<~EOS
    omlxbar is ad-hoc signed and is not notarized by Apple. To approve its first launch:

      1. Run: open -a omlxbar
      2. Open System Settings > Privacy & Security.
      3. Click Open Anyway for omlxbar, then confirm Open.
  EOS
end
