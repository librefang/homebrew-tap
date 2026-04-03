cask "librefang@2026.4.3-beta11" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32041"

  on_arm do
    sha256 "c14ced077fa8d3889dcfc02039900441f7aa0987f36413f2393a9cf3bcbc8871"
  end
  on_intel do
    sha256 "69101400e19285b67e9107600bd2c9f0be93af7c638147b86d795089cb5b42d2"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.3-beta11/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.3-beta11"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.3-beta11)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
