class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.7.0"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "hf"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.7.0/higgs_1.7.0_aarch64-apple-darwin.tar.gz"
  sha256 "b11765bf89cb186181bf152a4fd3a9d90bd8790bdb757075453ea48254b35f73"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
