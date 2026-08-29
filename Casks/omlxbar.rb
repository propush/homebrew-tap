cask "omlxbar" do
  version "1.2.0"
  sha256 "18aba2f1f128d295cc14f9593f9d5ba18f62e8cb412bb85f760705fc79f656e2"

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
