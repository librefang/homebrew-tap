class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.7.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "83a3680d1a868201ea2969ca5346e0fe0327800004daaa8021b21329e520970c"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "5e95d0c354dc5084dfa9411c899a21c4808edd8eb51e7de2b699d9fd3226e7ea"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
