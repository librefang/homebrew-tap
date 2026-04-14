cask "librefang@2026.4.14-beta20" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32160"

  on_arm do
    sha256 "7aa341d96e3c7e16f0e5c9947bd46ffbe88c6d24befa07515817a1fbb5db01cd"
  end
  on_intel do
    sha256 "65b4666a29509914a765898bbff7edb3f7b01d23eb2d9e9b1935f52b846009f2"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.14-beta20/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.14-beta20"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.14-beta20)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
