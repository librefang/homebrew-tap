cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.32259"

  on_arm do
    sha256 "90db3e292063ef6ee1e1bf2fdda57bba9252b98a2dd7faa21ccf62d108a32467"
  end
  on_intel do
    sha256 "f537e29e3aeff572ea275a0310653f957b2923ae6044c05c7e65b0c440a8fb46"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc5/LibreFang_#{version}_#{arch}.dmg",
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
