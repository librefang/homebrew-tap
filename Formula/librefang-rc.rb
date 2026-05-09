class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.8-beta.10"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "ac648f0e41d74a31571b9343083a4e534e3cc05556e961d78e07ff6a17e0d0a9"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "70d1e0fa581cedb5a5048419786d0bfce2639259cc65fc8e4e3c346ecfe4a812"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d93a25b03ddc5c9a8d76322262cc537b64f81edbacda8629efeeba2d30063b3"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e23cb971082fc1cecc41d4714abc88dfd4766b9a2401a0fe1f8eca5ff5ab91ff"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
