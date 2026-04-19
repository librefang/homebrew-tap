cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32215"

  on_arm do
    sha256 "43d6d96a2440c5cfa4df1ed73388532cdb81083db025c15f63c77a3fa12aee7d"
  end
  on_intel do
    sha256 "75db7edd0ac8cbe444f54191f8f80ed2cf10bea9940b130b5ef05dd221dbdea0"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.19-beta25/LibreFang_#{version}_#{arch}.dmg",
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
