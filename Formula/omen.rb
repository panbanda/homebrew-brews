class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.0/omen_4.24.0_aarch64-apple-darwin.tar.gz"
      sha256 "80de18f084d2f5fd5a04bee7598fbe9ce7fbc222d316e62f7b2b291b0da4b0f9"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.0/omen_4.24.0_x86_64-apple-darwin.tar.gz"
      sha256 "7e5d15cd522565a598ac1d9ebd8062a1bd6f91a7ea2c5fbefb618811a4518db4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.0/omen_4.24.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74a361a462eeed8f36cbec79a66fdd4eb5d9afe8afcc5a822a688520bb5f569a"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.0/omen_4.24.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2e3f1cb8b5eb80c80914b73a8d796355199a53150bda6e802933329672ba58d"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
