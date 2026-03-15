class LibrefangAT045 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.5-20260315"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.5-20260315/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "01d9334a62c67ff06ec545d2c629f9d9c41cb1f40a168fd94faaf7d173c782f9"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.5-20260315/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "e5841e2a2308f8af12c4fa7ef36d93678a8e88c9a46eb9eceb27d87872dd1550"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
