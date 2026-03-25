cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.32260"

  on_arm do
    sha256 "d8586945fe60ed6c473536a3290e5c62f8cec5292cce83c03697739f457094ac"
  end
  on_intel do
    sha256 "ab23e7cce5de219a020b4da2d7f4150c278a03a35e22be1152f5dd04d1549cb4"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc6/LibreFang_#{version}_#{arch}.dmg",
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
