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
      sha256 "72dfa3ca08aca521bd2f77ed71979bff96f1f663d8bf675fc1491d63b2a45e62"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.10/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "3f0268d42b13a7b816cd4c093865adfdbadda38c0306c903bed09a649cd2f70f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.10/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce625947cf996549cde2606a38f6d455b6adc57c2d1934657e86562014a7ba8b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.10/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2aebf7498820e163d10984eea28d56bde79977ccdf4c23c2d8b60be3ccaf24e6"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
