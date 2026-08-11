class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.1/omen_4.26.1_aarch64-apple-darwin.tar.gz"
      sha256 "89e9fb4e0e3c612240f3c76d4d4ff4da6210714f0b108ad6386cd92b0e808bf0"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.1/omen_4.26.1_x86_64-apple-darwin.tar.gz"
      sha256 "b4f4e9889dc82719a22f53a5258f5eed4aa16df1725d78eed246f721ab38bfab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.1/omen_4.26.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fbefeec95b0e31a10e3b96e424cb5ac8664628fac2debf64b654bae4d30e9845"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.26.1/omen_4.26.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f90be10bd2e077de7249e2ac0e74efc5d94071f194da70e6491a4b7e2a644e46"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
