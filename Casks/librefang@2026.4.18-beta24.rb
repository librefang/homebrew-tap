cask "librefang@2026.4.18-beta24" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32204"

  on_arm do
    sha256 "e2c768bbaf8bd84620c88ea03377288e4e0916b9873cec5074e0227b74ed9822"
  end
  on_intel do
    sha256 "9b4519c1a324d559790310af30faa88904e4c1498394c5d0adf22d5dbe2d8d18"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.18-beta24/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.18-beta24"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.18-beta24)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
