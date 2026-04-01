cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32016"

  on_arm do
    sha256 "0bf7f42933423b7e38919b44f1ed6358a0235f1b198ad16a371823527aa92545"
  end
  on_intel do
    sha256 "5ddd421da0ee6d7127cdcba179f853fc3e5c9d00e905677e3075d17eb608019c"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta6/LibreFang_#{version}_#{arch}.dmg",
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
