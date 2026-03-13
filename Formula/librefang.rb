class Librefang < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.3.57-20260313"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.57-20260313/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "9cb18b96c3578f77723457816b45da81fdc77939a6d97d0d3a0d167ab5a5bd54"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.57-20260313/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "63d7e129a7e4b137d8c50aa826b1d00a5a1eaaa939de234e122e19a8ba590b59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v0.3.57-20260313/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60a7c259bbf91bf797cd9ce35444e649004b52af1519df9220c94d7527ea8350"
    else
      url "https://github.com/librefang/librefang/releases/download/v0.3.57-20260313/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e3d9ec1ab9435d303d90e8b4ad887ae7855602eeb2349b83c42d568eee5b58c"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
