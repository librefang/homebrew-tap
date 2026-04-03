cask "librefang@2026.4.4-beta12" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32052"

  on_arm do
    sha256 "2efb00e16075529cf778a230062a654b3fe15e532fd26dbc727937039d345855"
  end
  on_intel do
    sha256 "b823c665c40473a4921771e7cd4d882e8115171f49582cc8f14e9d907d641d43"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta12/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.4-beta12"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.4-beta12)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
