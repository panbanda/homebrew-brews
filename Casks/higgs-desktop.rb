cask "higgs-desktop" do
  version "1.8.0"
  sha256 "434defb5e17defb2797317bd29e45d88f52b1431c0963a3761151338cd10b77b"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.8.0/Higgs_1.8.0_aarch64.dmg"
  name "Higgs"
  desc "Desktop dashboard and chat UI for the Higgs inference server; bundles the higgs CLI"
  homepage "https://github.com/panbanda/higgs"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Higgs.app"

  caveats <<~EOS
    Higgs.app is not notarized. On first launch, right-click the app
    and choose Open, or run:
      xattr -dr com.apple.quarantine /Applications/Higgs.app
  EOS
end
