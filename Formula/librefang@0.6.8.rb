class LibrefangAT068 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.6.8"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.6.8-20260320/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "62c5734d0536735000411337aa4f822d0454d86436880d93706c28c9df045048"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.6.8-20260320/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "d0a1709428d692514f704021b8c5c14c38908bb5c51ce13df369af96f8e0c601"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
