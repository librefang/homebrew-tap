cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.6.32117"

  on_arm do
    sha256 "c08ef61042bd8aee8a31dec7639546c09b91b82d8e2d2ea526d9bc580056c5d9"
  end
  on_intel do
    sha256 "0dacbbb3d21bd57fb82e7a792080e73f2a8df11919b7bb2c736a06e2bc2272e0"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.6.10-beta.17/LibreFang_#{version}_#{arch}.dmg",
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
