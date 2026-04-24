cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32245"

  on_arm do
    sha256 "36c93a25696962ad0bd52408701b01690274a2cff7636c08471113d23d717029"
  end
  on_intel do
    sha256 "d4f9ba25781028cf1581000422d72a3a8df8e5cf24ab725e2fbbdca9b3db7da1"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.24-beta5/LibreFang_#{version}_#{arch}.dmg",
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
