class LibrefangAT2026711 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.7.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.11/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "f811913e513b8815cf4c274a6093978823c4f9a42ecdcc9227b0e52fac11fd68"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.11/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "a93f75f4d327451a05eec6a759d139b10336637c521f2f6ba3a56c40f03e5a0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.11/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d9b402413a300490d75d1d3f83331fa71f1757fbe83232a3ad879cbecc47a14"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.11/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "288c2e622656545c1344a15f5c4cc376042c111885cc0493a33cb0540be2e7e4"
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
