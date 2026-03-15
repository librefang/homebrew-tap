class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.7-20260315"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.7-20260315/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "8213d3c85b1d7fea210c45bb57269a65bbb862b1eebc79c4b5513a9ee8dc447e"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.7-20260315/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "704d940dbd1985919151b2b2243ffcc0c47f1d35e8145b26cc2f65d41aa2e64e"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
