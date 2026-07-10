class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.7.10"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.10/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "77e2e102d20eaff3c2c173fdb7ad0b3dccdf905428a7dc72eda23e15dffa1693"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.10/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "18500d720c518528bfbe8c77c1d8a8614acda29d902e89cb5870f6a867a27ac5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.10/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9faf67304b1180dcb464aab13b7f03db7e923d67e6d57c663e257f6f966ab698"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.10/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f87a8f77e66110e97fbf1c37eb3bb64c8e5afe257ea724ea22c47eeb078547c0"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
