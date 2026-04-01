class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.1-beta6"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta6/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "b6ecd953a26bb6b9412970c084412267d8d2acf7bfdf54d5f1dd02e3d1d375d8"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta6/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "2d40995159359989ce2df850a060c06d0f1409af23b9274de4e59ec887c1fab4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta6/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e5ab39450f5a0cdda6055798202eacdad3d6ce3d155222a095fa5e9e08e27ab"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.1-beta6/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2ef8d33d0692e7f711a6eb69ce642abb00f2b28633761c4788ec331c1661aa0"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
