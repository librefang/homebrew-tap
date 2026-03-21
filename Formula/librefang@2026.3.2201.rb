class LibrefangAT202632201 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.2201"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2201/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "9326c8b685709745087a727ef5d1c78f6bfb82687aee564e1653406d61d87a17"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2201/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "ad9a18fc2d5b51eef3b6451bc5dcdd226dd9ac4d0e8c8708196eceac054d6c91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2201/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4869c158f96efd9cd698c0e796ebf62d8cde08ffc6422e2cb5a0e8164404ab92"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2201/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdd4d1930aded545e064b5136720709eebbcec082f5cc31d99a87c0874bb4996"
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
