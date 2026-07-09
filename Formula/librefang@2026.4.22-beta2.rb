class LibrefangAT2026422Beta2 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.22-beta2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta2/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "6773dd097569009a84bf41f4133ec93d013382a324844ab1c364ce6ea9bea303"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta2/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "e4a780cfa6bcfc4a8d304eda9d0755565a757ef87e288599e0ff6b851353e2ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta2/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d9e4758e4a3f1875b1ce0926c706bec26dec728ed4520c6bfb161c6ad8456f3"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta2/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bae9d909d3d8187ddcbed91a26ca713b0dfe508e5421e3dc6f1ff60ab8599dfa"
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
