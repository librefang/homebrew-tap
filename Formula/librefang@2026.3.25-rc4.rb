class LibrefangAT2026325-rc4 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.25-rc4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc4/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "b44decd018422a42fa71926307e6fa2dfb107c9a0cb7d5ef1f8e6ddfcabfa382"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc4/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "5f301c07328dd2ff181a8b327c0f8e131c75fb78702e28bf7bd5629d6f1daf21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc4/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91f9704917a6b2f69d8266695d235c16abd0c13cf2582a3b83ed0c1a86831b39"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc4/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc13158d4658c07cec96f5d4f538d7f2ef57410140a5f70799f298cc215b141c"
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
