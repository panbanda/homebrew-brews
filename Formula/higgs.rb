class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "0.1.19"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v0.1.19/higgs_0.1.19_aarch64-apple-darwin.tar.gz"
  sha256 "3d9a11955b7fdfbce316541916e1f1e1b584fa69c1922de2c456a8c86bf07a1a"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
