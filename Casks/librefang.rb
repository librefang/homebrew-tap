cask "librefang" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"

  on_arm do
    sha256 "61689bd8137a3192a1ef334035710abad9f6271cf55e7c1e9896a582da55f51b"
  end
  on_intel do
    sha256 "a283e98d71cd116fe43451a3136a4b06960799a80fc2a19ab8f2dac63c590bb1"
  end

  url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang"
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "LibreFang.app"

  zap trash: [
    "~/Library/Application Support/ai.librefang.desktop",
    "~/Library/Caches/ai.librefang.desktop",
    "~/Library/Preferences/ai.librefang.desktop.plist",
  ]
end
