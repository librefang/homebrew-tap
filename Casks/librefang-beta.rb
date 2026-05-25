cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.32263"

  on_arm do
    sha256 "a3cbfab00d94c923f4ca6615865799fb966203b9d39d882067fda469a0182b34"
  end
  on_intel do
    sha256 "db7f1f713fedd784805fc9faa7a149c93ccbe520d2f834eb17fac3c2560b8809"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/LibreFang_#{version}_#{arch}.dmg",
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
