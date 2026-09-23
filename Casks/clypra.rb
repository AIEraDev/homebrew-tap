cask "clypra" do
  arch arm: "aarch64"

  version "1.5.3"
  sha256 arm: "7015a57f20cc4cf426f544eb7e67584f72c62bba8ec19df5294f5829c5b1621d"

  url "https://github.com/AIEraDev/Clypra/releases/download/v#{version}/Clypra_#{version}_#{arch}.dmg"
  name "Clypra"
  desc "A modern, native video editor built with Tauri, React, and FFmpeg"
  homepage "https://github.com/AIEraDev/Clypra"

  app "Clypra.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Clypra.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.clypra.editor",
    "~/Library/Caches/com.clypra.editor",
    "~/Library/Preferences/com.clypra.editor.plist",
    "~/Library/Saved Application State/com.clypra.editor.savedState",
  ]
end
