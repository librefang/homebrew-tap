class LibrefangAT2026325-rc2 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.25-rc2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc2/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "cd160fdae4586526e93e5a39174ae820ec424a6c24b94f3ad85acd973df8a171"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc2/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "8e6710135a9e0f502c89b54b74c41d9f9760c7dbb0c6d5585a47eacb323e93a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc2/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b99e4d61743b12bf1624c1d49cf10b54f6c006462df0b14058241cdc599d4741"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc2/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e822401c64475a1f39431720c5b370981788dc12ae9ec2e6b6552d246d4bca2c"
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
