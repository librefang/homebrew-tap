class LibrefangAT20261016 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.10.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.10.16/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "38bb03c9a7055411561a54955e22136acb6dd880f6ff9524f902224ea5852de1"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.10.16/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "a592e52ba80b3ffe77bf4f773be5f19e21a91015c6c1b349bbd1057bb83ec331"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.10.16/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f6b290003f1a983cfa03514aeead3f389dc2bec92f70785df99e785c325a804"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.10.16/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35116cea59f5889499216489a2cd307b57a56f1a6627a4051a48659a26d828fc"
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
