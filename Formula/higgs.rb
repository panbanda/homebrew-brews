class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.5.0"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "hf"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.5.0/higgs_1.5.0_aarch64-apple-darwin.tar.gz"
  sha256 "2b757118bdd666b258623617fdea1bddffe20edfdc892942d3b289e015e43ea1"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
