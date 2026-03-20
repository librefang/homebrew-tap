class LibrefangAT070 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.7.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "08d86a69f817cb8c91768872a5477e2c1364e75f56c7e693fa0b734558c28947"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.7.0-20260321/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "f69283b00ef37a8898c41d1ef0132d501983f73efce85f29feb6d1713f20beab"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
