cask "librefang@2026.10.16" do
  arch arm: "aarch64", intel: "x64"

  version "26.10.32169"

  on_arm do
    sha256 "d2d58498f7cb7288948b0ac1d5c3396e924a1aa6ad9f90677282094e2cd7d73e"
  end
  on_intel do
    sha256 "da18de6f9fb99ad0b7a4dec8874574a9706c10ea85aa5e803d0b5429fe368a22"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.10.16/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.10.16"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.10.16)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
