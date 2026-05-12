class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.12-beta.11"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.12-beta.11/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "0f170a21145d021f8627e0e368ddad0ee338b857ce5656fe3e73e30dde108d3f"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.12-beta.11/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "73242c14a26e4d29bce70da94297c1c6878f0dc681c712cae906d6eb0ccde04f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.12-beta.11/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08fb4cddff935117934e3f416a1c5428c915c6e1ff6dd1445aad03f0852816e2"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.12-beta.11/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3d53bc439090efb982fbbe4253a362632b76389ab5c9fb2da73e5471581fc97"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
