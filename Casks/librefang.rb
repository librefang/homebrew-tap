cask "librefang" do
  arch arm: "aarch64", intel: "x64"

  version "26.7.32109"

  on_arm do
    sha256 "522beddcb7db06ca2f47547c8e7fad0d781638df98ab510922128c0891a49654"
  end
  on_intel do
    sha256 "506e3305bfee332b87933187996501d846197e4b8cc7a7c3142ec7e333c4ad0e"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.7.10/LibreFang_#{version}_#{arch}.dmg",
      verified: "github.com/librefang/librefang/"
  name "LibreFang"
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"

  conflicts_with cask: ["librefang-beta", "librefang-rc"]

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
