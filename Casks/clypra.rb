cask "clypra" do
  arch arm: "aarch64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "f56530fd1a1ab0e5b517e9e9df2870c991dc773ad4cc55770c04301faf243eac",
         intel: "723900c5d5179ed0617785854b945748c181a03f4801d060a2ec94df77cd59cc"

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
    "~/Library/Application Support/com.deenminder.clypra",
    "~/Library/Caches/com.clypra.editor",
    "~/Library/Caches/com.deenminder.clypra",
    "~/Library/Preferences/com.clypra.editor.plist",
    "~/Library/Preferences/com.deenminder.clypra.plist",
    "~/Library/Saved Application State/com.clypra.editor.savedState",
  ]
end
