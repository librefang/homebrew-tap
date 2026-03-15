class LibrefangAT044 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.4-20260315"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.4-20260315/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "aede995d51009996fb92afe4bef84ba781af8d56dc01c8046ad02522265440ba"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.4-20260315/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "d61980686882dc1821f02f8712bd7b6ebbc1c8f461f22b30c1bd67411466d54d"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
