class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.7.21"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.21/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "4fa91b47961c542da2e520b8d7a74a16329e9f440c80688736a4396c2bd0af3b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.21/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "a45fa7593adb5e9dac9b53d35b40c7181d32c5ad4dda56b3f2a7e4f166b80125"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.21/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48070cc1db89ddcd279923a81b6ade0a507d82ef7c55bc6fe7f2848f6bd46681"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.21/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72bd6a7654fe65fa67c7f179a17ba943d09ce1074de76fab66461c04063350e3"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
