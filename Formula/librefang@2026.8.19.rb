class LibrefangAT2026819 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.8.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.8.19/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "249e354361feb757c5440374661c9196ce7e75e79d8df2ebb2f9e0eb4fae6c19"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.8.19/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "fcc6156cdf083762e99c4d19975bc16691dc6dc275af4e14c7f2c1bb9907196e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.8.19/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e096631301f0cfe066a55e5432f52bca88d43b2f9f21ff8a0e8f23bd9f6d4c26"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.8.19/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffa36b5d2cd2a236a1cc52987713549a13c8915162a3cc05eff39a254e7ff626"
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
