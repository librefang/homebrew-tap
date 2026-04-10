class LibrefangAT2026410-beta17 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.10-beta17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.10-beta17/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "f3dd5f423ea46ea76a30da7fd856c28205534d009700c671dbd326b89074a8db"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.10-beta17/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "2af8d50cc5145c2544b271d43aaa8d249d6c30ce7be661e471f71e7331b4fda6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.10-beta17/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5680000c74c747cc0a5d032cc34625397583491ce10684e9240a8a4761555aaf"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.10-beta17/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e770135a8d8480f5caac62cbfd48570c0ebda27ee34678a5a033440bf1fb7363"
    end
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
