class LibrefangAT202658-beta10 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.8-beta.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "65ebffbaefaef5a50d00d7ae1de7d317d7869a2ff63a54ba7ba0e392f3a99040"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "48c618862dea747d5a58ae8a5a49e92fdb334e6fbd3baefe6015b324d15a3df2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a707e68b525e92e4ba8915869cb70fdd9cf6b70e4ade901a466f5b456b62ad9"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.8-beta.10/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2859824b1947575fbef6f94b2770eb9ef1d99a3bb56ca4fe4a7b02446e668c2b"
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
