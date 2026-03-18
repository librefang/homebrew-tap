class LibrefangAT060 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.6.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.6.0-20260318/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "ed94f0d46437ed0ab5b31dd873015ddb511a76f6674a95d93a0f1308e8e614bd"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.6.0-20260318/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "292cb2ebac003a89c8df2ffdc7e6d8d080666ff4b18f394fefb8223e058eabaf"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
