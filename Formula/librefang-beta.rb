class LibrefangBeta < Formula
  desc "Community-Maintained Agent Operating System written in Rust (beta channel)"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.14-beta20"

  conflicts_with "librefang", because: "both install a \`librefang\` binary"
  conflicts_with "librefang-rc", because: "both install a \`librefang\` binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.14-beta20/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "bdd05ae9091a23eac3d174729fea2361a6d8408d97d1d5726d21f459f017c2e5"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.14-beta20/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "96c89316e5e4854c7912aa73770d7741bf284fff72c1051409c1b5e23b7ff1e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.14-beta20/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ba318016df5b1bfe02a2727e33eff99b4324b3e68d94c2ac958c7d5bcf89be9"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.14-beta20/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c09a71fe9683f446945b1c56e5b8ec7fcc90d0802298201675cd5eddf9a9f7f"
    end
  end

  def install
    bin.install "librefang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/librefang --version")
  end
end
