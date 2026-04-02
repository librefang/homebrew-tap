cask "librefang-beta" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.32027"

  on_arm do
    sha256 "1ae99647be1d527d0c568f2f7269a34559bf27b4c4969fe54a0243f4dfe1eac5"
  end
  on_intel do
    sha256 "2e235ea61104923411d8550b94f9543d01e664df87263c352e32fc95022e812d"
  end

  url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta7/LibreFang_#{version}_#{arch}.dmg",
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
