class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.25.0/omen_4.25.0_aarch64-apple-darwin.tar.gz"
      sha256 "03c6256b6fd2bd6325e7f6b05c33e13610abe0fbefd8ed4aca699e54b81a9961"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.25.0/omen_4.25.0_x86_64-apple-darwin.tar.gz"
      sha256 "f862454185539d7ba7b3d73742df865f849848fb57f8b81216e8b92826164682"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.25.0/omen_4.25.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82184a9c98fadfbb0276cc9f966a62360b9bf3e9ba99334a34f20ae2a0ee46ca"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.25.0/omen_4.25.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c5176a36b41c6372b60d08b9c2b2752c7afe92d3852458f17b41c605980a06d"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
