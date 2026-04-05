cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32075"

  on_arm do
    sha256 "df7816d3dd02eabf2421ab85f35a94c268319c64226757de0bbf3392a7ef2a93"
  end
  on_intel do
    sha256 "9074df074f558d37320ffdc24e2574dc6b11d024c51f1c709081eba7357da3ab"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.6-beta15/LibreFang_#{version}_#{arch}.dmg",
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
