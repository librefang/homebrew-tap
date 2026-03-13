class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.0-20260314"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.0-20260314/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "7f8d4ab952332efc75e9ee606b394d955956bd836f9a85ce41a6c95398117475"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.0-20260314/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "fcc71ae05bf02529a45e13f452c449c8059ecb898a948d582b814ca5393a7809"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
