cask "librefang@2026.7.27" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.32279"

  on_arm do
    sha256 "75990b497fe5f3b0256e928ff43400a5c8419a7b6c8c2ee7303cc0aaa311126b"
  end
  on_intel do
    sha256 "a4b94f917ac98ac7182a41f22b8bcb7d297a042fc82d3f1fde3931fdd4787b1f"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.7.27/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.7.27"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.7.27)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
