class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.28-beta.14"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.28-beta.14/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "94c79f86a9c825c8b7e1e72d4c4a1557bbcf97e08505afe9dc2601d8c376ccb4"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.28-beta.14/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "a1a614a8af6dfe32535f492563cbea5a78d99a4a732c82fd6f8da1c6bcd6be19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.28-beta.14/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f662c7f5ccf219e7c5f5eb9f0c7438e319e23375b00a1836a68853a59e6341af"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.28-beta.14/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1a1eb11c11abbf22956c65a3886f245acb26695b1898a6417c27c802eb43b2e"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
