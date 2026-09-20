class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.9.19"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.9.19/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "4b24f6a2b97b20279dc042463bd061090818f60ca063a9aae7fcc3954eafb99a"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.9.19/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "c2ce92124454da18bfa0bad0dbabfb98f56063cee73e980ac5f2cc1cf5a521ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.9.19/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f64e2fc44543841fb6430e0075687c6fed7e7c3ad21a84d94464c54b7697335"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.9.19/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66f4edf462a5e1bb245579099d08381f3447bb36ee99fd4180f5caf548229dce"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
