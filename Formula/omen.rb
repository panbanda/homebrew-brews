class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.27.0/omen_4.27.0_aarch64-apple-darwin.tar.gz"
      sha256 "825dedfc45b5180e7cf45f13b7cb05cb0c8474bb70385c0eeb26a0efc4261f51"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.27.0/omen_4.27.0_x86_64-apple-darwin.tar.gz"
      sha256 "2b87e48c86f0fdaa80bde60148f055a170f5feb79faa91611d4cf4b35d43c394"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.27.0/omen_4.27.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81ca147c352517ce062a5191d8f174b6f6968df8e550e96cfedc535b57d638a9"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.27.0/omen_4.27.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83fa4412e98da2ed467e83391a76d4da8e9c96b8a6732a4d500b987dfaf83df2"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
