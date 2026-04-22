cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32223"

  on_arm do
    sha256 "895f2dfc3a00f4ed84cdbb5e19b6cf81374b570a5494fc309d5df85aafe70ef0"
  end
  on_intel do
    sha256 "2c4c7fbca3ff45bfc1a4d795afc1fcf3aa7adb1c6f466ab7858e3eb92ca68786"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta3/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (beta)"
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: "librefang"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
