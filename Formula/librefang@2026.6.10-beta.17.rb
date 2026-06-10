class LibrefangAT2026610-beta17 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.6.10-beta.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.10-beta.17/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "5f8ba43e43a220c933c0c34f7ee9cd8efed7dd99572552af3633a39f79b9b447"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.10-beta.17/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "fba4cf2b167f62e8d230c556565f6819505bcb002e95715271b84175d378183f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.10-beta.17/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98b9eb7fe0dbe74fde28f7d12f8b085f7ca0c61ea67f430b9cada3e8f0da04fb"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.10-beta.17/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ffd35d6e2c72bdea8587ac2fa027cdecf2ea7f3f88a8b18f63f2f82d6a189d4"
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
