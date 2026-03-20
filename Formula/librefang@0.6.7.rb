class LibrefangAT067 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.6.7"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.6.7-20260320/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "8997fd17e1c51cc09c115cd2cbf5acb5aa84994c1c61c872fb1805cff0af7f4b"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.6.7-20260320/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "2a94dd920aaffb7691f4c165731f02caf4e259f6d3670ed71c020450ee927aff"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
