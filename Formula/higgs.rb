class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "0.1.10"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v0.1.10/higgs_0.1.10_aarch64-apple-darwin.tar.gz"
  sha256 "0f5747fd19a0785fec6d422e61ef1c656ce1f830967e28ba431af658835dec6e"

  def install
    bin.install "higgs"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
