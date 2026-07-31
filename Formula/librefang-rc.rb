class LibrefangRc < Formula
  desc "Community-Maintained Agent Operating System written in Rust (rc channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.7.31"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-beta", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.31/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "589f84d3d35530ab5d2110d9e11526e90581ed58c3374e23156f2c29f50344ae"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.31/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "878f315c2730781895d61fc323d7910ba1650fb26733346a851a11f65aa62bd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.7.31/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f1f16c4738447b367712696344127b54bfae728684f39c4d5c514ebb801beea"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.7.31/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "811cf16cd43ec92981bd059da735b817cb11f890b470e01f81c202b44e11fbc5"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
