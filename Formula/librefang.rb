class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.6.29"

  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.29/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "8433bb9726ce8c96dd8ad785c86a6be4540f5a53dbdcdeb75d9148c193dc2e96"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.29/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "54707a8e325c3cb2ae4ef0f6721ef7816466b1d482ac0a957ca9261aa6f91af3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.29/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89d011bc826897eae512b368a3ba9ccd271e647fb095d90ff1ba9df69ddfdfaa"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.29/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "570aa48a5f6e165c86dc0c2512123690dd32527f8c3754445a3c1528db77cb7e"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
