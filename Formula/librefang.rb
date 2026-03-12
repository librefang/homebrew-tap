class Librefang < Formula
  desc "Community-Maintained Agent Operating System"
  homepage "https://librefang.ai"
  url "https://github.com/librefang/librefang.git"
  version "0.3.48"
  license "MIT"

  bottle do
    rebuild 1
    sha256 arm64_sequoia: "REPLACE_WITH_ACTUAL_SHA256"
    sha256 x86_64_sequoia: "REPLACE_WITH_ACTUAL_SHA256"
    sha256 arm64_monterey: "REPLACE_WITH_ACTUAL_SHA256"
    sha256 x86_64_monterey: "REPLACE_WITH_ACTUAL_SHA256"
  end

  option "with-desktop", "Build with Tauri desktop app support"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.48/librefang-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.48/librefang-x86_64-apple-darwin.tar.gz"
    end
  elsif OS.linux?
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
