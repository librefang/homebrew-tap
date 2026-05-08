cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32090"

  on_arm do
    sha256 "97d4682e57cd0ffba7633e6fb760a651157b259b3d7ea43cf3238081e91fe4bf"
  end
  on_intel do
    sha256 "0320f35688ce6ac240d19c996ded391df99ae50ff602798e22ceb96125958e9b"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/LibreFang_#{version}_#{arch}.dmg",
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
