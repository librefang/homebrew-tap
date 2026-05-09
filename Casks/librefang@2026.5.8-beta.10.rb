cask "librefang@2026.5.8-beta.10" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32090"

  on_arm do
    sha256 "c1fbfecbf54b82c7e40c667a79a9ed11dd940c678a06bc33591ecacf3de1f1d9"
  end
  on_intel do
    sha256 "432af76713f2880bbadf234ac3d86b5c273ffbfb1fc6c2bb4c97d9c67268b15c"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.5.8-beta.10"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.5.8-beta.10)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
