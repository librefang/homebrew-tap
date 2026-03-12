class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.3.56-20260312"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.56-20260312/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "935b1726644aad1308dd21f0a86c434f5ff46b1df35aeef58ed8135df670bc76"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.56-20260312/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "13a45ab83a6da0790b40ebf9d10ee6a99e81b42f1f4ba889105ae884f255e06c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.56-20260312/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d775e47ffbff7aa658751a147ff19c7ccce03cc7ff0fbc7a98f29953ebcd1154"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.56-20260312/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56523340723269b12071845db784cad0d7edb253f0af6d4d0bea97b92584ed92"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
