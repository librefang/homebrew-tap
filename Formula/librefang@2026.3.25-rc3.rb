class LibrefangAT2026325-rc3 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.25-rc3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc3/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "96cffdbc7f3e413c3bd2452db4edf13ee27066c48069d479148a92a8e5d1cc0d"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc3/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "d3a78c6f922650f06111de52d9c77f568a6f47e21a2c79b75c2dbd16dad7d300"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc3/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1381a754ae8e8f3628b0993fc28db16adba9d4a09685a4eb4883978a5c8e5254"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.25-rc3/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45f93f7a5fce2e159e30bf40e3426a376cc4b850d9f930ff1ed288520ff344ef"
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
