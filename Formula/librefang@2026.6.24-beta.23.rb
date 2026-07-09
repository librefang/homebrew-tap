class LibrefangAT2026624Beta23 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.6.24-beta.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.24-beta.23/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "5d7d823bce5ba6e37378f6f5cb836b7fe0677b51718a33131e934d0c09263ed4"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.24-beta.23/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "aba8c1a6161eca2f6ad2a514d9665c0c942d3a3008b6f671fdb851e9687c6e32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.24-beta.23/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7665cdde4f939f9fb74215f2e9472440518d20e597b9adaf526022273b8841ba"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.24-beta.23/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c81a5d2b1b904e2f0864534c30c01e9cbe36b1e6790c419414e2684dd501a516"
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
