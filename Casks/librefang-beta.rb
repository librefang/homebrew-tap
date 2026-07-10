cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.32119"

  on_arm do
    sha256 "6efd900aa17bf064f14e7b4acc9f2314e333b2b77ce8b9f85a8a0d1e9bab7845"
  end
  on_intel do
    sha256 "7cb7a36fb550ab41ab88c088dc2a3c5bf7f41a1cec98ebeb2847e3f338cc8ed1"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.7.11/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (beta)"
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: ["librefang", "librefang-rc"]

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
