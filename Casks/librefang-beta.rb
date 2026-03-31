cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32015"

  on_arm do
    sha256 "b1566ac716bf5d4e438a6ebfaa7aa34b1e642e4580d50573d7941633f9ebd41a"
  end
  on_intel do
    sha256 "41763036a0a3b8dcbde4d89ace46b919d58cc9fd922deb24f513ff7a06f58029"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta5/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (beta)"
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: "librefang"
  conflicts_with cask: "librefang-rc"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
