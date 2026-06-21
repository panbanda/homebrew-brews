class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.6.0"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "hf"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.6.0/higgs_1.6.0_aarch64-apple-darwin.tar.gz"
  sha256 "0b9ba944434af95b3babe3aeb91bcb14bd1b29dee187f9ecd52d47473e283c71"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
