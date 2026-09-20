cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.9.32199"

  on_arm do
    sha256 "4e81f4b0f6a776f70e99d72f3dfa7cc55fb350eed5276069168d96bcd82b2b0a"
  end
  on_intel do
    sha256 "9161581e86d105e40398ef98fa7548b0fdcf9132b3e82ba50faa77fa40fab286"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.9.19/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (rc)"
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: ["librefang", "librefang-beta"]

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
