class LibrefangAT202647-beta16 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.7-beta16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.7-beta16/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "f48731085ba06b7508817b9ea8a9615b3547f99515817645e36027647d6a5c27"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.7-beta16/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "0d5b4cc3239a5b18618523ede9dfacb5d6a1e37ed781364b16e8c45f1ed9a38e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.7-beta16/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11cc6d4324940d9f1604d8b1600647e3803a2d2c16daecf3eadb7f37803a19f5"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.7-beta16/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "403bc1839ea15ae48aa265b254783ba54049172a685cb1b911cded397dbf6403"
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
