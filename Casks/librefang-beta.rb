cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32171"

  on_arm do
    sha256 "16fae91d3f167a8b98e5360cf57dcf6b00b6eb0bada0fbac645f337782dacf11"
  end
  on_intel do
    sha256 "e5cccdcd92cf67a7e347c7fdc87d60c030d4cb69ef34750a51862e4158437d43"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta21/LibreFang_#{version}_#{arch}.dmg",
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
