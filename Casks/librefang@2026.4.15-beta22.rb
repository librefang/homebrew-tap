cask "librefang@2026.4.15-beta22" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32172"

  on_arm do
    sha256 "29bc9977aadfadb10dd78f2ea04aa79d1172d5d680eaad0ab4f6d06eb59c4e66"
  end
  on_intel do
    sha256 "440c37224403be767426aa2a4c6e1f57ee4ff89c49b6ae4cfd9adbe4deb73ab5"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta22/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang 2026.4.15-beta22"
  desc "Community-Maintained Agent Operating System written in Rust (pinned to 2026.4.15-beta22)"
  homepage "https://librefang.ai"

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
