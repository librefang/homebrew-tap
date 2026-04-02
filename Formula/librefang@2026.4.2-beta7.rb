class LibrefangAT202642-beta7 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.2-beta7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta7/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "0333786564e64fea065fb9fd85dc3085d72bdcffd309e1ba677b8c53703be131"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta7/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "90575e31344a8311e2ec536f24b2543edcad4dd6074ef0aa29f31358a8d28681"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta7/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8143d4a667210fc7f7d93ce6f99a7c99db63643a44e23af9400a0928240c5946"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.2-beta7/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06d6d08c43bf7b103cfad5d881f9ecdebada5f615b654d9b5a677d9b20d6546a"
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
