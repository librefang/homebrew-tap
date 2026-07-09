class LibrefangAT2026411Beta18 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.11-beta18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.11-beta18/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "23b72c0eca120b144b45dd2e7b75db83d5adeb61a448745ef78e1685ce36f347"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.11-beta18/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "984f8859f7b954789529124ab21c8bdad8e05309b096ca0435e7fb53c20011b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.11-beta18/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86b423045e28fada5897496a3fd737f0486f0a3630ba7a78f613440e105e9aa7"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.11-beta18/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db170af82770ca1bc2d4b0a5b3a4a4ca49f61e83f2165665413568e1357ea4ce"
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
