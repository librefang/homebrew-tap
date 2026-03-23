class LibrefangAT202632407-rc1 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.2407-rc1"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "cefb6d57a7dca75a6746a5ea9884e9b47887a2c20af615c1ba4dc94d41a0f706"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "ec62dc8bd02ee62f8ef3776484bab3e54a8d9f43088383ae9015177ed17f2a62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f33d1598669d7c04dfa2f38b5d625552000dc337beb3de22155256a03b4117f"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e034dd9df434c085d502489cbb65e0367e5c46668f02748b0d04aa69b07e8dbc"
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
