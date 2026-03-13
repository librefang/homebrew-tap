class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.3.58-20260313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.58-20260313/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "4b4ff268c06186604e5d2f0bd0192c6caa6c248d67304cb45af0823b10ac5abc"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.58-20260313/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "3f76a9e3aa4a5b48d026740328399a0b6fa11c187f7008d19ddd2a5376fc591e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.58-20260313/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90266d6330e3cedef02ef6913270726e3f3c6d9fd6fbfda508516d9a3e4e9333"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.58-20260313/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a52bd28081856c55100256cfb22210a3f6613933697ad5369f3fd995ab563b0"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
