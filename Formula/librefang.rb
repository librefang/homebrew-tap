class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.3-beta-20260314"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta-20260314/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "4a0839d91e020e4bb392490166078f871f6d5e9642402654855323a6460ae32c"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta-20260314/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "dd97141e49f726052a66d89f00b0fbfd9605732b9cf8d458f5bab843f5ed86c0"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
