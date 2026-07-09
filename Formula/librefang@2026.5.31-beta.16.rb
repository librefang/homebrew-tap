class LibrefangAT2026531Beta16 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.31-beta.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.31-beta.16/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "0032db7518ba93e5a58bc43338e2e64e4564d85b65c1f3902085c3cebab6ba2e"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.31-beta.16/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "0bcf105f683d3ef45e4cce5c95ac8bb76692a9fa8846df4b07de8df77aa5fe29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.31-beta.16/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f035cf3e71179672cb88ac351b7fd66c207da584ba273ad2805f88130971dade"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.31-beta.16/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fb17467cf0e52db210ac7b28fc8cdbce0afae350096f4175f6c32c8f881cdc8"
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
