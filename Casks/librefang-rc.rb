cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.32219"

  on_arm do
    sha256 "3c1f0f38cf71c3be87a8c58c827dcf014caec1d5d4795c179a05251fd37a7cab"
  end
  on_intel do
    sha256 "440148c87d92f704dcd4f9ce2abb6a00c400854ebb8a25374bbe33dc778e1ddd"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.7.21/LibreFang_#{version}_#{arch}.dmg",
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
