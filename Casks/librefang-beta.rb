cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32294"

  on_arm do
    sha256 "c20dfd126ab84e2220ec11261ce999d42a9566e2460d33bf3c38a2207d6b04f1"
  end
  on_intel do
    sha256 "785cc719510dc9fc56efa84109720b2f0e8391f0d1230351dbe66719692ddcb1"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.28-beta.14/LibreFang_#{version}_#{arch}.dmg",
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
