cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32090"

  on_arm do
    sha256 "ebb6b41e4b215387ac4b8209bf6b2e517f930b7c7da616fe245f048ddd7888da"
  end
  on_intel do
    sha256 "d41823187d836716ab94d77ceb56e9440f892a37cba37d2d0826ef2f857930be"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/LibreFang_#{version}_#{arch}.dmg",
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
