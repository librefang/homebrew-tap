class LibrefangAT064 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.6.4"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.6.4-20260320/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "348e2079f37515989ee589a017be8503a05de0354de27d65a668d57dd251cbd9"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.6.4-20260320/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "e9db6f66bd247dc1c587e13267ddd73d2254517a6d559132b155d257c6024c82"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
