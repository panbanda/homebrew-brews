class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.1.0"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.1.0/higgs_1.1.0_aarch64-apple-darwin.tar.gz"
  sha256 "ded5b0e3e234c59846fac9907aacf6448761c475926b35ea32ccdab7e0878806"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
