cask "librefang" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.32319"

  on_arm do
    sha256 "23d33efb1e1fd262910d10f4d6699b88f55276e278eb079636c76486414368d3"
  end
  on_intel do
    sha256 "d0faa4832e5d7b52b0eed65ef16ffd6a1a9773393c7c8418fe17bb509bc2d4ab"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.7.31/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang"
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"

  conflicts_with cask: ["librefang-beta", "librefang-rc"]

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
