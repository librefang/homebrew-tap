class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.31-beta4"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.31-beta4/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "840687dad2bcc1296d916d1de225b329cc37ce975f51b593f0a2b1afa1fcbbea"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.31-beta4/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "7a914269c363dca560a16adadc77a4341c9c8e586e54e32f2222091bb280546d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.31-beta4/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e0df7d135729f3fd036c929d5f7c97068df40bb0c89b17b94e2ba57265cd6e8"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.31-beta4/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03e99a14cbf14fc7ea881b29bb4dc729d8c6668cf544dd55da5e1d4b8df1560e"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
