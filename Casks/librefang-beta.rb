cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32028"

  on_arm do
    sha256 "5b35c4b64be0ec7780e75e76523d28668fc107eb0866473412aa893c1f642586"
  end
  on_intel do
    sha256 "eab5b3de3334a7c4283b81715d5ce47c4efcfb064ed45c24411a2acce9f60cdb"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta8/LibreFang_#{version}_#{arch}.dmg",
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
