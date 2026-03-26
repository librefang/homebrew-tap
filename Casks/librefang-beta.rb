cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.32261"

  on_arm do
    sha256 "dca859c91a3a256386019df49d5e6ea970da0192cc4f3897da6d01ab82ff31f7"
  end
  on_intel do
    sha256 "30831652b3bec9a95189f9cb60e66d8db59123e16eddcf3430f809d292976356"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.3.26-beta1/LibreFang_#{version}_#{arch}.dmg",
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
