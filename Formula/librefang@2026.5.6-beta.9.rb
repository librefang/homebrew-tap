class LibrefangAT202656Beta9 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.6-beta.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.6-beta.9/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "173966bef047bf493e61f8b605335903a41c2744c43bec5ecb5c51447d65df7d"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.6-beta.9/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "d0fb4055a234b03c6ca43c6811526f00081dd4325e6bef21b76ea9c41a3c1047"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.6-beta.9/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4308b18359480381c7e0a76e6c4bd8166a6753877f41bec2ed40ea8a9854bb5c"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.6-beta.9/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "200e2e310e4e428a4afbbf2cd69d01628b1903029c8dc1142061186ba01d868b"
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
