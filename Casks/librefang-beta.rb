cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32149"

  on_arm do
    sha256 "fb4deafb155b33d0f4f29db576c5c00a761c46bc61b86907055f400c40543a2b"
  end
  on_intel do
    sha256 "35c715e416edbaf1885545b29d728279add333e3ee4bbd83e7ebb4733fb24a23"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.13-beta19/LibreFang_#{version}_#{arch}.dmg",
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
