cask "librefang@2026.4.21-beta1" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32211"

  on_arm do
    sha256 "9dd132d30ad054511987aa6963c3c568c6c8a02ee67d016caf530408b5c153d2"
  end
  on_intel do
    sha256 "31ef95632c278a195c7c0b62880a1d7354efcc01eb89ded27640eb067f10ab7e"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.21-beta1/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.21-beta1"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.21-beta1)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
