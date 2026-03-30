cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.32314"

  on_arm do
    sha256 "4d106fb8b510d1880df18e717c53bb298225ff83a170684e63d2c560b4eaa1e2"
  end
  on_intel do
    sha256 "153d81a0c434ed41a68233dd605d48086aaab471df814cc3821721610cd5f7ed"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.3.31-beta4/LibreFang_#{version}_#{arch}.dmg",
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
