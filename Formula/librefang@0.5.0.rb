class LibrefangAT050 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.0-20260316"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.0-20260316/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "cdf6c3ee327a3497220e4200215bf56237d185aa66aa8b46c631eab12956cca9"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.0-20260316/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "eb76312f12abe6750a0ec51029861982871a6fe872c661f4df0beca3a677eb7f"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
