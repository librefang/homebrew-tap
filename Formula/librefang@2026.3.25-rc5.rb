class LibrefangAT2026325-rc5 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.25-rc5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc5/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "5de0c17527ec5e443982eeacd91965df7766b3944ecf1ad45697465043c6c1b3"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc5/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "481d11c1abab0fbd5e76c8c6ae4dbc8077390e464e8f71487c528ec57623c19d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc5/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34ffddbf29dcc2d021aa78649c5d58fd38da3caf69db26413dce889cacf3828a"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc5/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96c395b62b06261c554939088b1febecfac0b913953ac657913584380ea6bdb9"
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
