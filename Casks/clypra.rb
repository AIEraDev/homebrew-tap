cask "clypra" do
  arch arm: "aarch64"

  version "1.4.7"
  sha256 arm: "4339d4fa906b3441181f4da74244df2c6f1522fd996bb66f99d46a5a1be4f850"

  url "https://github.com/AIEraDev/Clypra/releases/download/v#{version}/Clypra_#{version}_#{arch}.dmg",
      verified: "github.com/AIEraDev/Clypra/"

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
