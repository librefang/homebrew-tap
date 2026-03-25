class LibrefangAT2026325-rc6 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.25-rc6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc6/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "fcf2d60ea443c3180ffb061aa07315e6a41f5ce48b6ea9c552961c254d75320b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc6/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "f587d712522673acfc5d6669affe735dd9d36938b2eb2833a0b938639df4cc9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc6/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0288656bd9803523d531c06921b4f243c5b4921fc64430a7c0d9754e1e1ba349"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc6/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c88bfff493affb9cff19a2259f89f1e4b8b4a54f8c87a1f17ce9e245e3eefc23"
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
