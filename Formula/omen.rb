class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.24.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.2/omen_4.24.2_aarch64-apple-darwin.tar.gz"
      sha256 "ace24172de2bcf37eed0d622fc99871b9c4c5bdb574fa99fe31b628468296612"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.2/omen_4.24.2_x86_64-apple-darwin.tar.gz"
      sha256 "c2e0c65bbb7776a1329e913c856fc3ff8d791b89489dc153a9e862725745538a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.2/omen_4.24.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "757db323454e8a1ad74c82be4f765114c6508c302ec27d9b0f07011ad68f366b"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.24.2/omen_4.24.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6523783bcb659667485a14b39927cfd9cbbd2b8208419ee8fca52d9feaaaefb8"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
