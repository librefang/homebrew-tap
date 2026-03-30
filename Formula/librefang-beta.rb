class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.30-beta3"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.30-beta3/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "a4bfabf0a2e78d1c8a67076455cc50e61a5a5f29d802d538f24a454afcdc709c"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.30-beta3/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "fe35e0e413773175e787599f1fcb4c1d1837907ecb8de495c93669a090b20c8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.30-beta3/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13973a1c243ebc28df254f367bc2ed40517715927e45cecbded7f45b4a036440"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.30-beta3/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "522684a3e0cc79579a9bc61aaeaa7cea2b4717159d76e53722c23c1ed8a42cba"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
