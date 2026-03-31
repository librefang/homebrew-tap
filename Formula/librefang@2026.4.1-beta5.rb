class LibrefangAT202641-beta5 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.1-beta5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta5/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "d41a0fb18db027bbfd97928d3be14ac85eb70f5bfbcec868c93474f0777b1bc8"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta5/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "6b7cc76aab7a7980ba0a0c4f8c51fb3e1b5226cc457d39bcca2d3da2ffd8956f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta5/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29f59695eddc8350f6fa072f33cb9061bae8e591273d96c22a9da5e503a55d6f"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta5/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d11dce1d987a10f1eb7a80780b5ac043fb71c807a2ab36bbf0ec3a37efdfdbae"
    end
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
