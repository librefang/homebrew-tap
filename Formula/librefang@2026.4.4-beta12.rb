class LibrefangAT202644Beta12 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.4-beta12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta12/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "e46ae6351093b736eb9a7078739445e6a76eaba822e45590cbd08abb9dfaa308"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta12/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "a49b2a69cf0e1816b335ebfaeab404bcc5f84ee30436632295dea86734a4ac65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta12/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c81cc8c40a886639ec96edc9bf95b19fb783453f35432bdd3461ff03f9c59e6c"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta12/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82a23b7b1dc3cb48741e2d2ce1554569456a5feea77b2353f7ef0289df2dce9b"
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
