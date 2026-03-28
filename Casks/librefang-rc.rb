cask "librefang-rc" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.32282"

  on_arm do
    sha256 "b283ee2cb861342ef1ad1d73ae88c238ad20a6a0a3a887ed66304b6e769c9212"
  end
  on_intel do
    sha256 "35a170d004e2e971ebc3ecdeda288995fca5881a6d183f0af43c07927a588b30"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.3.28-beta2/LibreFang_#{version}_#{arch}.dmg",
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
