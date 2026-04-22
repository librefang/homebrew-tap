class LibrefangAT2026422-beta3 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.22-beta3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta3/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "131851340cad563671a638a1009eb497aae8a00f184fa179839f6ea9ed0bd97e"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta3/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "0b63736af380cb77726e8b45924d51859e15b92d1e4c08d7573c26039f75055e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta3/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc8bd40851c969a54e3f0b320d2a6fac89de869a9d32be5948b985a4828c1529"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.22-beta3/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "958fbd67be7413be591e70bd859da006f1e1b5aeadead6f4ab1533b2c74e527d"
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
