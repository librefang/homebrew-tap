class LibrefangAT2026415Beta21 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.15-beta21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta21/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "db8d6c071b40366e0c467b3bd5571da4b549085b2d2d304a8327097d64cdd3f0"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta21/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "afd1b16229bfd12b885df89acc7800c4c10aa94ff80faa6b948bf02fdcf4274a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta21/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b89ee69fbc24be37a45ee914e0d1b25658b9726d932dfd4f6701fc88b6123c4"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.15-beta21/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e5827b0305ed3df891ed65d185febed861af4a054e2f619070fac00fac7d514"
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
