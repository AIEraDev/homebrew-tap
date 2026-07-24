cask "ithqan" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "PLACEHOLDER_ARM64_SHA256",
         intel: "PLACEHOLDER_X64_SHA256"

  url "https://github.com/AIEraDev/Ithqan/releases/download/v#{version}/Ithqan_v#{version}_#{arch}.dmg",
      verified: "github.com/AIEraDev/Ithqan/"

  name "Ithqan"
  desc "Local-first Quran memorization review companion with audio looping and retention tracking"
  homepage "https://github.com/AIEraDev/Ithqan"

  app "Ithqan.app"

  zap trash: [
    "~/Library/Application Support/com.ithqan.app",
    "~/Library/Caches/com.ithqan.app",
    "~/Library/Preferences/com.ithqan.app.plist",
  ]
end
