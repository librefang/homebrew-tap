class LibrefangAT2026616Beta19 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.6.16-beta.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.16-beta.19/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "a1bbfc9a59da339ca3a9bb516ff4e6c578e9cf79e3e2bd1257894ab241ac9e44"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.16-beta.19/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "6bb4178c52ff2e82064248190e03fc7ce158b9f40b68ba28787b678cfc580c74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.16-beta.19/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "567695441e7eb3df53eaf3587536863930f7afdb23ae80deb5e5cf1b996cfad0"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.16-beta.19/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56660e812cbad9ad03f2881543bc862b151af07d8163d3016b0c6009b175c344"
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
