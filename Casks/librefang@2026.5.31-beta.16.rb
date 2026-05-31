cask "librefang@2026.5.31-beta.16" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32326"

  on_arm do
    sha256 "ae3fdb295b612746f4e92162cf16e357c7dd8e8db36f3a4d11ac8ed37f1ea7f2"
  end
  on_intel do
    sha256 "f459e93fa9573b63f2d253dce90879483adb7d3fdae7cf542e02704195c891b7"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.31-beta.16/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.5.31-beta.16"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.5.31-beta.16)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
