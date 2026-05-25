cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32263"

  on_arm do
    sha256 "8469c73abc4fd13248a118f1e49da35fc59c9cdf911dc61d23338dfc99cdaa0e"
  end
  on_intel do
    sha256 "14acf938dea473dd1df3cf85f10cd7746d763cb0ec98c3613b8f5f1f7e51113c"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/LibreFang_#{version}_#{arch}.dmg",
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
