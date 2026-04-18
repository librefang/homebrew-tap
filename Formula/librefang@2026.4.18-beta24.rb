class LibrefangAT2026418-beta24 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.18-beta24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.18-beta24/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "89bfa38f66a2a21fe4c89b35646e25dbb5aca31eb9321f3a0362e127f998b79b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.18-beta24/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "beeb4baf5014cdc5ff523833c02f82508b0002878001e1c93aecc1d30bdae7fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.18-beta24/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3835d1c2df1d28060f8dbd7a602c4990eeeb6852015a89cb5e9aa17d7064c01b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.18-beta24/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f858de151bc79ad214dfe2de6237bb62ef3f9fed10d597fa11f83ffd1dc23eaf"
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
