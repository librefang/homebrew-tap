class LibrefangAT202642Beta8 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.2-beta8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta8/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "8840624715eed57555e6ac39511cd051b529a40620e49eb4848e4005c0e1726d"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta8/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "f95813893969a52e2550352211b4c0d6006a9214f0c861dadfbc416478fe9bbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta8/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f625dcfb799353eabb7e631ebf2559bfeeef40c68aa66b1e00d3b4aa9b6421c6"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta8/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bfd7e49cab93f4a5a9c4a4df518c9bf3c74d8f89f211f46fe99435d39d31990"
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
