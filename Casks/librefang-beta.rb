cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.32303"

  on_arm do
    sha256 "c6db18bc7011ccfc6192f71e479e9eb71b55d56a1fb1ef7c47ed81161f3dadd2"
  end
  on_intel do
    sha256 "6f3f4dbf6193e68dd7bd3ba4e38a10a820a6611ca01a5007bb08bb6cc8a9178a"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.3.30-beta3/LibreFang_#{version}_#{arch}.dmg",
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
