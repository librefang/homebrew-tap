class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.25-beta.13"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "b578faea392295988ffa313fcbe87452019dc9e70af2b5db0e04aa464cd21222"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "b3ec000f62c80e7d93f516136bd472e41691a130b7d6775661654a46b3a1c679"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8df5b9f086d20a4b68b432c5f5514d10c3e94b54e9e2dbb9deecfe914bf2d477"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ef779607c788557e8b25e66e597fa82b7696c23cfd9f14f48c23f7682f26f28"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
