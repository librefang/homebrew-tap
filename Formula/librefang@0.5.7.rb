class LibrefangAT057 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.7"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.7-20260318/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "e1510f91a6e394d285bc1889ef0bf12a2d626b68318677d078656cd2c019cca5"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.7-20260318/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "8edd274a70491c3dfc0f7df6954cabc4da385733479fdc411cdf9f7d9620a1af"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
