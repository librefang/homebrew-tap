class LibrefangAT2026328Beta2 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.28-beta2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.28-beta2/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "08e7e398fde4a8fbe41407d0e5320c86fde9e4e1beaccbd4fcc0c6d6f59de577"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.28-beta2/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "3880d550a4f54b94d9d96a05e858f2a2e5dd197c4acec9cecbd5cd3fdd352a63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.28-beta2/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "021d343158e9b69d361795d6adb476de208f8540d2ad5dd9c9c5f01cf682757e"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.28-beta2/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1db53a1762c7f28195f3f61b2c9e5a1e80907132c9cc05d1af7aa0d27b232675"
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
