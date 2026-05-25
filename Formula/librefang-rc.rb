class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.5.25-beta.13"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "0cbf774a96b9a5af50f35b0a552bd6f79c05e0bac4b0a5e5eaaf8f7aafa12be4"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "ec200bc1b9aa0438871091f5ceee7f114e160f922fbfe7747acc943d866beba3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e394a8704633b64e7d84a5cfb0a7e47c6480454835c674a1212e0b07f714807d"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.5.25-beta.13/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "462b859206d56a3d3d55a99c73eddc1bdb778a3e269e69a0aa09e386819e508d"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
