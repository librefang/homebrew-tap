class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.19-beta25"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.19-beta25/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "2bdd0da5da1beeff7dff87af7899561ddcd9a7d8daafec94d2f3210f345ae13f"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.19-beta25/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "847ce5553928516daaf1280ff6a4a875846e3912b3b91afffd14e245f08b0349"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.19-beta25/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71af10b4fcfe1d807d8028a4919c3f6c8b343cce0ce40bff279bddb3b9925b1b"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.19-beta25/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e296ddf4905f08390b86f97c048d6497bc0ba95b80f85bbf1110a194a27b789c"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
