cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32053"

  on_arm do
    sha256 "9710bfba141a0fc7db1eb5645b23307776b7a55bf4b0fdaccbfd3838faef6d9b"
  end
  on_intel do
    sha256 "3989e43eab0d6b392dd56428b885dbbd5cb607ae7d25095807feb7e12ceb2c00"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta13/LibreFang_#{version}_#{arch}.dmg",
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
