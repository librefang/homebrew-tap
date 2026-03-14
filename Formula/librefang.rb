class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.1-20260314"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.1-20260314/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "e5f05194c8daee0db284d4e791dab4a9151012ca3bc1ffb94031ce6bb9d02800"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.1-20260314/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "a6b5472e55004953714c6592d1caf55aa91df5d98d34ecc46e4f6782c4b7ec14"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
