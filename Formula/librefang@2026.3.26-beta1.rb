class LibrefangAT2026326-beta1 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.26-beta1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.26-beta1/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "3cacf18e382b06ec5b6faae77db0770ca643e55ca58e10759dd1ed0a597d7fa0"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.26-beta1/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "613c16c222b5244797a0b9377a9bd2cb602d9f727d00e24a9ab94a75155985f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.26-beta1/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "821b95a3a85f7c35516e53dad8035f2c5e30cd81a79d21c410ddf51a72d57a66"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.26-beta1/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "948c051fa82eb06d4c8c26a95421ebfd7935b1295f085d8bdad702bc901b990e"
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
