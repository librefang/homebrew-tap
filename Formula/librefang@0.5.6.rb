class LibrefangAT056 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "0.5.6"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/librefang/librefang/releases/download/v0.5.6-20260317/librefang-aarch64-apple-darwin.tar.gz"
    sha256 "fab836786bc5136919ed8e0133469d7bdf6d248a9bd20a09b2ab78e3b45277b5"
  else
    url "https://github.com/librefang/librefang/releases/download/v0.5.6-20260317/librefang-x86_64-apple-darwin.tar.gz"
    sha256 "bdbf41d36d7bc9de3fb5dd7da9bd4751fd393eb5a1c2bbf366b15e9ff2cc56a2"
  end

  keg_only :versioned_formula

  def install
    bin.install "librefang"
  end

  test do
    system "#{bin}/librefang", "--version"
  end
end
