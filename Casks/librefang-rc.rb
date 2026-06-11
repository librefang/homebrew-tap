cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.6.32128"

  on_arm do
    sha256 "40ec6f88179f6ed699678a52f067724a30b0164d0cb875caa9b8cf2ddc1dec23"
  end
  on_intel do
    sha256 "fc742f14e7f1dc0510e131ba3a43711f6cdead5516f80743f3f37acc24ef2a7a"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.6.11-beta.18/LibreFang_#{version}_#{arch}.dmg",
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
