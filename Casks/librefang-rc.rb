cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32182"

  on_arm do
    sha256 "bf528bd52384a764358311d5791a6da3aa89621ae52fa01eff98301a56a7f0c0"
  end
  on_intel do
    sha256 "baf8e4cfa3842a9fb7711150911c709ef61c8aede7b68ff52b5eb720ab1fe1a0"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.17-beta.12/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang (rc)"
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"

  conflicts_with cask: "librefang"
  conflicts_with cask: "librefang-beta"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
