class LibrefangAT202646-beta15 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.6-beta15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.6-beta15/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "c1c3666b32ce3b371a48595aedc525da4c0e18639b9ad64e4ba41a8a801af0ee"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.6-beta15/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "3f0eda7d307e4729393f6d9f474f73f2c5f8323f0da4fe1b474a73eb32d46fa6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.6-beta15/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a24017a5ed32949b4d8688b83a94c8273aa96a296c1c5a80594bbabf562b6226"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.6-beta15/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b6ddbf45b6e256ac4045c53b886d1aec696cddd254b299b2b474d1e5c6d1312"
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
