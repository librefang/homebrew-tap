class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.3.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.48/librefang-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.48/librefang-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.48/librefang-aarch64-unknown-linux-gnu.tar.gz"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.48/librefang-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
