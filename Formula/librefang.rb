class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.6-20260315"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.6-20260315/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "4d397570a2e57e82a491b8f52c1f908287bfb7416a72683342f92007bd685a62"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.6-20260315/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "f1fbbd74e9dc0d04870fe272ca4754c321310c086a34805ad431cca04eb4a499"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
