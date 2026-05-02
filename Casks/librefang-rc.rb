cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32028"

  on_arm do
    sha256 "628d6d8eff188d6b9d6a45f0998c3953cc53c9aca5cf623c90ce9c81d8ea4f4f"
  end
  on_intel do
    sha256 "8c12d090dddb9fd564a132f0691d5cb47f3b8cfad0b85e78c5bada67a19c4757"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.2-beta8/LibreFang_#{version}_#{arch}.dmg",
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
