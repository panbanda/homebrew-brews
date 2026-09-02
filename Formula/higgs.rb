class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.8.0"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "hf"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.8.0/higgs_1.8.0_aarch64-apple-darwin.tar.gz"
  sha256 "e123f628811d933770f45a845d268dea2bc70350d56a01612ec53aed2647ca3a"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
