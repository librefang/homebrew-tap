class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.2-20260314"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.2-20260314/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "eea3a1b1e9616d480573f3d7c7da916a1f20b1a067f6917152a491b1f6fdbbd2"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.2-20260314/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "bc31570fce7c90e3bcb927e71dcf4d96f9df89bccea2247799a0772c6605943a"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
