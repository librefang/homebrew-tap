cask "librefang@2026.5.12-beta.11" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32131"

  on_arm do
    sha256 "002dac91e6a020f066fc754fc17eee861133007a6e13555b7d43df6f8541d744"
  end
  on_intel do
    sha256 "4665ebb6ce822f7e36ccf5519c7d12c750b6f46972783f5775c870b013e10d79"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.12-beta.11/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.5.12-beta.11"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.5.12-beta.11)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
