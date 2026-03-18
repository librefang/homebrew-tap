class LibrefangAT062 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.6.2"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.6.2-20260319/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "e7b3eddea42c3f579604dce135364f190c50dc685c45b09a19899681e351640a"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.6.2-20260319/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "f02744d342e5c0e7694e5e7f2a3f5389cf391280e87532ab52507aa6d0b18305"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
