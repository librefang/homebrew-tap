class LibrefangAT202658-beta10 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.8-beta.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "feabf2d575d190c0a120dc474c55d5fae293935726474fd030b7ce6dfa549be9"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "d87f21874ba061679d9a16c57c66e0eaa8ccadeeacbb1baef305b96043ad14be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "735f5c095ace2f21dae91fd8a97fc4fcf351bc455317f16d851f68ae9acc468a"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f55d470b0ff2bdcb8659e0d31fd871af00a0c020dfba44a0b7874b6615f95b9"
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
