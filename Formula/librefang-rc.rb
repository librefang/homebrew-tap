class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.21-beta1"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.21-beta1/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "2b567da8d3d2f52e52992837ca6fa098afea5466dc88007bfd7eb38548ae8062"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.21-beta1/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "3691a92fb5493d3dae98d2de078003004427628b487ed4fc285bec34db86de9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.21-beta1/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4e4c2c241ab31b1cb9a1ad9fff6b4ede33922ad47e1bdef4ba33bb15bda92c8"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.21-beta1/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ef3ae8dd02315c683303272e6cee96df0c9dc0111c525a80b882352164b2906"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
