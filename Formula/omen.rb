class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.0/omen_4.26.0_aarch64-apple-darwin.tar.gz"
      sha256 "a5eb43b388066a2ffd28795b32f1658496d88cf4ff35a7b44596e97fcc789f6f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.0/omen_4.26.0_x86_64-apple-darwin.tar.gz"
      sha256 "90d25d37025c4c3d658e553bfa9fd5f1d80afbf261f660e3d88d2364c3e85f17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.0/omen_4.26.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a22995d90b4117cf7d8c95d512508fb1c36099e28390260af21ee7d24909f0e5"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.0/omen_4.26.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2b7395f348ab1d4e7679ffde7b9b41c9dc925e98a63872a7625fe9afd18d7ce"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
