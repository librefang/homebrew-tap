cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32069"

  on_arm do
    sha256 "dabd69fe323bdb052324f81badd42a50acaee06b1adbc9f357630a6685a9a477"
  end
  on_intel do
    sha256 "e8be19f654e953149d425845b13a229465967f304a28443c3bdf40851a305187"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.6-beta.9/LibreFang_#{version}_#{arch}.dmg",
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
