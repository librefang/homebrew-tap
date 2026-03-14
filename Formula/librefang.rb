class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.3-beta4-20260314"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta4-20260314/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "43442fac7032dffece87643fca73456e2a0796a9336e3b09fdf2cbfa7dff3609"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta4-20260314/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "1d83735318fbf620128dbd90d6c865aa2279d9099f7251905b8a381dc557c70f"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
