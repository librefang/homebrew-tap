class LibrefangAT202643Beta11 < Formula
  desc "Community-Maintained Agent Operating System written in Rust"
  homepage "https://librefang.ai"
  license "MIT"
  version "2026.4.3-beta11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.3-beta11/librefang-aarch64-apple-darwin.tar.gz"
      sha256 "b4dbf8b1fa3ee955288c8598a968ff68dddd7cf36b6a1a3eec3dac223005bc15"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.3-beta11/librefang-x86_64-apple-darwin.tar.gz"
      sha256 "940a534a269296d553767b3de476eca9814650cc510fbc9dc3be24bb0e49cf56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/librefang/librefang/releases/download/v2026.4.3-beta11/librefang-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4dfe0c81982de0f75f529dac0445c85908fb9549754e23de79ffd289aeb7875"
    else
      url "https://github.com/librefang/librefang/releases/download/v2026.4.3-beta11/librefang-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95c809825f5df1601be0e03b4d552852eead457a27c367ddb9ab26fac96ed766"
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
