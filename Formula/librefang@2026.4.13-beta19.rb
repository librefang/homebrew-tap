class LibrefangAT2026413-beta19 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.13-beta19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.13-beta19/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "13029a17b401875c7a265089aa3f0dc42ac1a7e809bbddaf2bb0ff550fa34144"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.13-beta19/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "c5544ff51eec58e8fdb4b34231cd6119bf511f0e5ea87b649ae069bfd817b187"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.13-beta19/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9f9c4478cf94686e924a6f96751f0b62f48b57dd282f7682217cdc9361f840f"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.13-beta19/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32cb044379222ba5dc260b83c2fd81ddfc201e539a2673cc3448d58a90df3177"
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
