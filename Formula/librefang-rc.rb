class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.24-beta5"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.24-beta5/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "06a1a6b75bad5aaa156643c15777b5d23ca4c201a783e1c6fb082b3154763a47"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.24-beta5/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "9b18f0834c9083d70c26f57fb3ecfb61c612bbd20d016b8b18cf336c22e7034a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.24-beta5/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d39b7f67336bc56103195f681e2344a6122965c776afdb3849c61204a17e217"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.24-beta5/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d71922246796a5dd77f80882ecdb6734bf56a7df3a51c3b256bb6507f61f75d"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
