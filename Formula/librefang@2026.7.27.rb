class LibrefangAT2026727 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.7.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.27/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "4209e672dfb09d78eccc478be8d16d2bb1b2e700839ec26f5a43835c279c29e4"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.27/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "a353bde237bda5f565090b80921b8578eedfe7d8444a03ee6887eedd5729892d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.27/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c88d238cd0abd8f9d2169a83d183364977f370e9e1ed101bc5fb55e0668695d6"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.27/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "148f47150055915819bd0e6a51c9f380384744f2f6816b70040b6fe1bad10cae"
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
