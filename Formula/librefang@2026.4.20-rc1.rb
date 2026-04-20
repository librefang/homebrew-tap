class LibrefangAT2026420-rc1 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.20-rc1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.20-rc1/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "00b2687400de602cddf0e5b7cc71b3c78b1cef9352a3ca7e20977d165c761276"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.20-rc1/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "cbd83448d84c53809da9b60389acbb3fa79241c05c413da19c0f0e8117670e12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.20-rc1/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68f415c6b9aa09d8dac7b87e27de0d864838d9aca1d765663026001c5ceeb181"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.20-rc1/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7e316f17a248d1d36f670df30afe6820323a8da58efa9d7590dfed0ae4712ba"
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
