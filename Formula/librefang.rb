class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.7.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "b4185ec202c6443b65eadf92490b0c71f212b73cf8a5d74b52e95956ec2d4b83"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "1c00f8c192482e18f9d39967c4c465fd97fbdad9dae65405e8e06f4a9440b58b"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
