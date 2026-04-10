cask "librefang@2026.4.10-beta17" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32117"

  on_arm do
    sha256 "fa16a9fd7843b38c09ebf369688ae27f4b1529089fc15888cd9ef06032522084"
  end
  on_intel do
    sha256 "e03745bf7ad95ccc6dc37d3819ee3c0daa4b4e6dd75982f537ea8aa7cc9d23b0"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.10-beta17/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.10-beta17"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.10-beta17)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
