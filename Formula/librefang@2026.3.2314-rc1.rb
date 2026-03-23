class LibrefangAT202632314-rc1 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.2314-rc1"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2314-rc1/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "3fe2b30642c7efe9f278da6e0f097e1215b66af76760df5c49a939d1a1d8473e"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2314-rc1/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "2b3519580c6733b7b735d54fb2cd839bba9142150888011c3ded472b341932c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2314-rc1/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01d6579dd5abf4ed3b2863bb5786366a0aed70cad1af1c7e1790a0e9e2848beb"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2314-rc1/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e2c09a17a772cd88fc48a811e40c26fa9c37fa06cf7913628a8411bc1933186"
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
