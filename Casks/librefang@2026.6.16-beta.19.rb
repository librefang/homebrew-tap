cask "librefang@2026.6.16-beta.19" do
  arch arm: "aarch64", intel: "x64"

  version "26.6.32179"

  on_arm do
    sha256 "44797c6ac7eec21ed083099132a0a7f678ee40a40221df5c5625c154967aa7fe"
  end
  on_intel do
    sha256 "c584feb348d07012e964ce7b45290f2d5a401801bd756e7f9ebbd24a96506a32"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.6.16-beta.19/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.6.16-beta.19"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.6.16-beta.19)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
