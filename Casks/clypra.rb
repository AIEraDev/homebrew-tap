cask "clypra" do
  version "1.0.1"
  sha256 "d738f57300a146709c8b324bbe1f694e8f53cfbdae98c06459889368a189d729"

  url "https://github.com/AIEraDev/Clypra/releases/download/v#{version}/Clypra_#{version}_aarch64.dmg",
      verified: "github.com/AIEraDev/Clypra/"
  name "Clypra"
  desc "A modern, high-performance desktop video editor built with Tauri and Rust"
  homepage "https://clypra.abdulkabirmusa.com/"

  app "Clypra.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{staged_path}/Clypra.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.clypra.app",
    "~/Library/Caches/com.clypra.app",
    "~/Library/Preferences/com.clypra.app.plist",
    "~/Library/Saved Application State/com.clypra.app.savedState",
  ]
end
