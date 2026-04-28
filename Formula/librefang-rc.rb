class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.28-beta7"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.28-beta7/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "66d119c76b42f7bde911f56d0f322d6d4ae647dddec572d0244a37eeeb708a8b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.28-beta7/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "86265a1462b422999c4c827464afca1f2213f27aca6abe335d78a81ff3534b68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.28-beta7/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67a677c08eb11c88e127a7734d620eba1e7c7f45b04a60fd8b0f98a5ae891a4b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.28-beta7/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "462ba5d16f8d24a4749b011600ae0091702a44196867e14109fe21bdc07aeae8"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
