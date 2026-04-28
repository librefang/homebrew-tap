cask "librefang@2026.4.28-beta7" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32287"

  on_arm do
    sha256 "6e066a807344d85651504aed2d9757a1296f13d43693d360f901d436e6259de1"
  end
  on_intel do
    sha256 "795a6f8b8989858934dae799a4eb0d06f57d32f352d6a18f8fab174bfd8afc0e"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.28-beta7/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.28-beta7"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.28-beta7)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
