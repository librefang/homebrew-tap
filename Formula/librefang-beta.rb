class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.6.11-beta.18"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.11-beta.18/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "39bed6e993c94c1416c26f0969b3df79a2970fd5f1666d9ab67b945db782b8eb"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.11-beta.18/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "07602165b9f679cd68472d1467bdc174c5d2a9d019f9cebc83a3167f3f70c8db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.11-beta.18/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb1de21d544bfd570a7434feb398929c4483f3c32871712c86e5ff7a58ce1c67"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.11-beta.18/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f974106186dedba12fcdb5793e9339eee98856c4b052b1d41ecbea8a4b543e92"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
