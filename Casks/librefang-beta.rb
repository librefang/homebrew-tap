cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.8.32199"

  on_arm do
    sha256 "8c1793a840ed77279390cbaceaefe6b2ff85d64c957831aaa051f5e8bf231b11"
  end
  on_intel do
    sha256 "848af87ed7e55331ec541c5fcd51b69596d923d6c489a63b6ac83c95348bdf0e"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.8.19/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (beta)"
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: ["librefang", "librefang-rc"]

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
