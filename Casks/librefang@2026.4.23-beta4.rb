cask "librefang@2026.4.23-beta4" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32234"

  on_arm do
    sha256 "7bb222f0a437e8b11f2d537f7ec7cfff1474af67ebcb7b04d8d57de20411c307"
  end
  on_intel do
    sha256 "2c8d4dd55e9741e6df084073bb80878f29beb71bad905b701aacce0e86b0aba5"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.23-beta4/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.23-beta4"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.23-beta4)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
