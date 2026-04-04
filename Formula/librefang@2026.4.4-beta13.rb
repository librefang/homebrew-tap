class LibrefangAT202644-beta13 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.4-beta13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta13/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "a76cdc2d591aa4a65e18e18f5115cfd5edf3dc0b6f3740d51e35585a99f3b418"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta13/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "041e1f0ea135d993e442cef3e8aff3d2d5faa81c0ae6138894fcde8ea3298304"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta13/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6abc7d1edf67950dc1ffc9d651f67692c08227bcd9453fdbc701822e7ba2a824"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.4-beta13/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5051a04f1ad3d27707f72791fbac97883ac43e6532defb76234a33b262cb92cb"
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
