class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.5-beta14"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.5-beta14/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "ebefc92a959dce7e4aae304729440c3aae31d2ef2e5669712bfdc32ae176656f"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.5-beta14/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "71efe42cf349f0f61b64fff436d94dd216fa7153d435ed368bc4822e929de6ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.5-beta14/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3474e30284b6a5bf183380c4721e723c7d42048c05a2346216b3a03e7fc82dfa"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.5-beta14/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5aa4e89b33d14359fac102e1a55bd373de4243bed12d24fd4011fee6a19d034d"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
