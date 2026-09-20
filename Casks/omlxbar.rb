cask "omlxbar" do
  version "1.2.1"
  sha256 "16f42e335dc2eaa75651b94788cd4e0c1ce11d91e91d02aaa786d71d6864943f"

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
