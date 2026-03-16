class LibrefangAT052 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.2-20260316"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.2-20260316/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "02dc68a042535328a6fb735ba1b802ff51f8214dd147a5f55cf5fd1014b34351"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.2-20260316/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "1d7c6becd038b49a6e5b7dad6f4a1a72efa7425277e0c944df62c44aa87f0cd3"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
