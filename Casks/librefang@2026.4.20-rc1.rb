cask "librefang@2026.4.20-rc1" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32205"

  on_arm do
    sha256 "8b7a3c814e96bdf260b6ab1f34792d17a6ef858858f73d183cf72559bb833104"
  end
  on_intel do
    sha256 "57bea56d282bae78866ac0198e767a6a1936f9ce8ec24839ec0b19880810901c"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.20-rc1/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.20-rc1"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.20-rc1)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
