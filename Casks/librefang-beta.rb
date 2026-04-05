cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32064"

  on_arm do
    sha256 "be9498ad33e78ab99c9f3afcecd1c74f58dd32ec7e860446ea3e999aa7afeb6f"
  end
  on_intel do
    sha256 "936567aaf4ebd302a042da1c42b35581ef2259585cca355e089a27eeb2070583"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.5-beta14/LibreFang_#{version}_#{arch}.dmg",
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
