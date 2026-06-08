class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.7"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.7/txco_0.2.7_darwin_arm64.tar.gz"
      sha256 "f3fbe578bc6812c3740d458b574ad6a719b792a368f22af275ea172fb77ff5f6"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.7/txco_0.2.7_darwin_amd64.tar.gz"
      sha256 "ac715bb1e9ec267597aaf6b8e07a656abf3e2f93208d4ce3f2b8b1d4e0102e74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.7/txco_0.2.7_linux_arm64.tar.gz"
      sha256 "e2deb7ec62b2dc8661142483bc7e5adbfee297c57665ba4b28b36c86ce9880b0"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.7/txco_0.2.7_linux_amd64.tar.gz"
      sha256 "ff459f160b9d4351576fed7671c75399b43f0204a76653fea3a7f22ba3b6821d"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
