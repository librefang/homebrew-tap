cask "librefang@2026.4.7-beta16" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32086"

  on_arm do
    sha256 "168eb677b52cdc6bcf91734c2d214b421ad0dda79a1d27f57cd348802d6f363c"
  end
  on_intel do
    sha256 "a44bfac2eca91e3116e8486b469f3d724c5aba2eee5791a085d1ffbea0cc1d29"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.7-beta16/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.7-beta16"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.7-beta16)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
