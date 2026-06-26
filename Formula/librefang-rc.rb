class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.6.26-beta.24"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.26-beta.24/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "b40a90595c0caf7f4799429f3185e1cabae3a5527c18001ef28f77df870bed47"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.26-beta.24/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "0f1e2b4547b896920b6f27fc2c3751fe87fb2f72a1efd4a69ed87d89bcd03e53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.6.26-beta.24/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "018927f6aa64dac27d1b31777bd504b5e20a6ffc9b1c26af59a845c699e9c450"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.6.26-beta.24/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "238fb2d23b66a5b8746e5179677d42420ed778f27e81d98ca382778b65e8633e"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
