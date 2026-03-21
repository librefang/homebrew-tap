class LibrefangAT202632123-rc1 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.2123-rc1"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2123-rc1/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "986356b1ee81e3dc9b50bdd90f4ba959ff54c70f6fbdc2070362088e03415919"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2123-rc1/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "d1b5b81b5389abc442a0538d07289d52fe939bc203dabc282ca03cddd5a91bcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2123-rc1/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa707f93d0c8e8963185e37f9e39a41e25a2a8d378bb9643477d55664c719a58"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2123-rc1/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfd8e316d0b4e304f35c0ef3df3db3fdfa9746b9655a49a9fb60308816cf95ee"
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
