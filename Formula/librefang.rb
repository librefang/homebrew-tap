class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.0-20260316"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.0-20260316/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "991b944a9adf15a365d079faa86d08d8756a90f25d633836018a251c9ef9674a"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.0-20260316/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "8bd6fe4c7a541a5ac2cfa96a775775af7105c0012bbfbc1861b58194fa94329f"
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
