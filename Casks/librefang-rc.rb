cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32090"

  on_arm do
    sha256 "9d528f4db6a9b581eef99d874fcddb5585cf28c06be2de8d692c0f7bda1d80af"
  end
  on_intel do
    sha256 "d71f6100482b126de78d20b63a451de29d69738bdf6fd3e75d0d1504f3152ebb"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (rc)"
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: "librefang"
  conflicts_with cask: "librefang-beta"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
