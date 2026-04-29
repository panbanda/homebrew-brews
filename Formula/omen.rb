class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.24.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.1/omen_4.24.1_aarch64-apple-darwin.tar.gz"
      sha256 "1bcb05f6a4c61e7cd2a51b728a1a5df551c00c19d69d0f9ec01d6520c0df40e0"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.1/omen_4.24.1_x86_64-apple-darwin.tar.gz"
      sha256 "335f63aa603bfb4dcdc8140155f3d31dbaae934d6d41bebfe202aea1b1dd6479"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.1/omen_4.24.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe9d4c382684358ce4d3094795dc19a920843f18ce97404d1675b343d1c4c9be"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.1/omen_4.24.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88c7ec130d5281c757a29017eb224a344d8c8ffec022bf820542b58c86c2f6cf"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
