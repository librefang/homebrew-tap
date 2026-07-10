cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.32109"

  on_arm do
    sha256 "5955c5832ae24e587a6f07041a49e8e2aa2901b0de9efd331e0a25fa11e7d3a5"
  end
  on_intel do
    sha256 "bc46909c9777bec189a9dab5410afe5aaac2db72f9111d24dc6b767a3780d2d7"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.7.10/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (beta)"
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: ["librefang", "librefang-rc"]

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
