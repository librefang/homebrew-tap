class LibrefangAT054 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.4"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.4-20260317/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "bc09c59d8b0f01a22c39df62d4b1c95304ce2a2344f979b5d190504bc9fb9d1f"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.4-20260317/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "48ddc0aa9dfc1732088825f73f001696f12493da548ef298085f0e202c282622"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
