cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32276"

  on_arm do
    sha256 "305fd9ca67f489a8e990c44e24b3f1162e6e6e96e9cdd19986f14eea8f2a8ebf"
  end
  on_intel do
    sha256 "38a8057caf2d3d7295c4fa961579da93c9fb3b78e43b420e9e2666f7c17914cc"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.27-beta6/LibreFang_#{version}_#{arch}.dmg",
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
