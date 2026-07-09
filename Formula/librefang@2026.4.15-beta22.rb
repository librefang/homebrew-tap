class LibrefangAT2026415Beta22 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.15-beta22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta22/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "4316bdef8932bb9984152b3c6f01d03ebb652a4b99378bdd7dc96a19ccb24c5d"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta22/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "314be666ebbf3ea0ad96f0c030c4fa39b546bb0ed333bf8ecff225391fe3297e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta22/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8839b55dfaaba84bbf9bb0e5063304ad2038c1bd7d664e990364022bb70be0f9"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta22/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "750d6f4b4a41f8f2cb274551cd9ac7c5cb5eb6a1ae589732e72f9745ca9f8a0d"
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
