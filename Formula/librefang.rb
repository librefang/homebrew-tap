class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.3-beta2-20260314"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta2-20260314/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "819eac785e289ba613d3f76f6f496f43914b83bf94749cd5f2c8cf649543e933"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta2-20260314/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "03ede928c6994ac96c8e96f986c15da55ed1cedef2644931ff1576b706c5b26c"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
