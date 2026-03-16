class LibrefangAT051 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.1-20260316"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.1-20260316/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "2e3ddd17f3ced7a6d294dc265b27e34aaceaa47e95554c5c6a85924058ab4c0b"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.1-20260316/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "dbfcf4364706584de20c7a64ee354c0151a6bc4256ee48aec4f565c41a482844"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
