class LibrefangAT063 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.6.3"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.6.3-20260319/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "a765114216eb9bf4ab5d65e5716415aa49007309e119fa97147cc74818b846b4"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.6.3-20260319/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "b940e461666305696f7de24169445e47c0e1411f455870d37ad924795d7e3f5a"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
