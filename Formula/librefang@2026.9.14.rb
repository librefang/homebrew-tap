class LibrefangAT2026914 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.9.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.9.14/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "c12186dcdd758ed50d2dd1f280f8751ff9398ee92a921d8d90c97a09f6af7aae"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.9.14/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "471f8440d8768b881a65ff2b7dfa82cb66abd4b3e62d83171f8f0091e62cf0cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.9.14/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "daffc4277b57982c2a9090bae6c3c629c1249902981c25025106bda74377ac1b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.9.14/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26c76044e55c642cc44fc43de7398b6b6ff222b7238b3408c282c1cdec5b3e08"
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
