class LibrefangAT055 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.5"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.5-20260317/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "76954636f6ff08b93415edbcc14390b28247684b960532bf6fd3a0ae9274c689"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.5-20260317/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "77658b57a8774b0b2300282a622edeb4ac59ee2dbe72e0fa4356cb1da10af524"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
