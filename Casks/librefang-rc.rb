cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32315"

  on_arm do
    sha256 "cb8ef8d4b84ab814bad02f6e4ee04e74eb2c9c4d3dd6ba92ee9338185159c7ca"
  end
  on_intel do
    sha256 "d2500239bd5a0f91843357addfb49183e7074c3e34f426a30a19a57e6696c63f"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.30-beta.15/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (rc)"
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: "librefang"
  conflicts_with cask: "librefang-beta"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
