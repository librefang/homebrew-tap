class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.7.0"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "83a3680d1a868201ea2969ca5346e0fe0327800004daaa8021b21329e520970c"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "5e95d0c354dc5084dfa9411c899a21c4808edd8eb51e7de2b699d9fd3226e7ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aedc00ddb1ee4ba85278083000e3439824eca2fcf9191e2527658e0d32b70917"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f07c126761e5256e9acaa9b07d2530f90a6ebd379baeafc5c66ba74f61965417"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
