class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.3.49-20260312"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.49-20260312/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "6babf365f33e50a4df17003cafd5f09023140675140c3ec2c53f2865aabc30f6"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.49-20260312/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "5c36d1eb247a11b8d9762f6e07b9439c7d526aa90a49ad017a69daf1c81939a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.49-20260312/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.49-20260312/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c71b776215e5e8f1c3470f3c8190665c853b9b0c8d4b443a5096ae5d3f17ce9"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
