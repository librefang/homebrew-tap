class LibrefangAT053 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.3"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.3-20260317/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "ddfdf604364ba8b0385d6cc2ee730d5d7544745c7e52f918846eb44e44310657"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.3-20260317/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "28f75792cc221993bd3e9152d9ca4f0df9e6c1f8ad229d25f53b3c8fe9a5de20"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
