class LibrefangAT2026423-beta4 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.23-beta4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.23-beta4/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "3e4fa79049773f3e6f2c11a591972135c0ecfa3281a72ab5a4762e739d8f60df"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.23-beta4/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "745b820c2b3680e544c02f25b082cd55a32669e9948984cd428f044b0ddab7a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.23-beta4/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61942c2ffdc932a483125686699f650fadf5f0c0e6b4b702aceb0306539efff8"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.23-beta4/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "101a9768df97d0b9881824302569094b02b6c3e23db1c247e25ba19f795088a0"
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
