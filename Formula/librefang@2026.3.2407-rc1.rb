class LibrefangAT202632407-rc1 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.3.2407-rc1"

  livecheck do
    url "https://github.com/librefang/librefang/releases/latest"
    strategy :header_match
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "dc85417be74a46512e33182daaab917c943b7d66afaa8b766080fa1ba7daa30c"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "004083a8676965c406ba80bb9bbea6a301ac44c7e9ce81a7bab3e6f5631be8a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "605dbddfc2efd93bd04f9b3929044be78cf0a9f4706d7a422a452d8b14ddabb7"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.3.2407-rc1/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d93cff9433ca6296db08feb234dfc8e40127c23bcf95bd92c0d94361b3855914"
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
