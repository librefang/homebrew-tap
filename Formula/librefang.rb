class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.4.3-beta3-20260314"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta3-20260314/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "56be838f107abf5f42de4d5f9626add235f6df186e28a922d280739571b5e419"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.4.3-beta3-20260314/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "ef7fccf700afa6661671466fcbe20f98e4e230b1020e7dc89245a0f63b20223f"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
