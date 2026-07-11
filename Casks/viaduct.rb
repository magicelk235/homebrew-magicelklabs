cask "viaduct" do
  version "1.0.0"
  sha256 "ac5a928e62e21819015755714a5f52713722a29a5d104b99676f42123e1314e1"

  url "https://github.com/magicelk235/viaduct-app/releases/download/v#{version}/Viaduct.dmg"
  name "Viaduct"
  desc "Converts Chrome extensions to native Safari extensions"
  homepage "https://magicelklabs.com/"

  depends_on macos: :ventura

  app "Viaduct.app"

  zap trash: [
    "~/Library/Application Support/Viaduct",
    "~/Library/Caches/com.magicelk235.viaduct",
    "~/Library/Preferences/com.magicelk235.viaduct.plist",
    "~/Library/Saved Application State/com.magicelk235.viaduct.savedState",
  ]
end
