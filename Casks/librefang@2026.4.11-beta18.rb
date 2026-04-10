cask "librefang@2026.4.11-beta18" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32128"

  on_arm do
    sha256 "d58681801e6f42b8c398fc4093b39a25f04af05349df9b2adb77946553530f3c"
  end
  on_intel do
    sha256 "33da53106ceea460ff961f01a8d09dc250c36db0741900c50cde89dbebd689be"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.11-beta18/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.11-beta18"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.11-beta18)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
