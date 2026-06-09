class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.8"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.8/txco_0.2.8_darwin_arm64.tar.gz"
      sha256 "b6d262f4fc672abdd9683504de1aba434e5a137d9ec55a50913f3a882ec2828f"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.8/txco_0.2.8_darwin_amd64.tar.gz"
      sha256 "7f30786d945d04016e2db7a06534dc693a6090dd3790bf83ba65cc8c27b7296e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.8/txco_0.2.8_linux_arm64.tar.gz"
      sha256 "c161468b65e4e14fd684c0522926b73abc664b1531e5f3a58df4356cb662cd11"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.8/txco_0.2.8_linux_amd64.tar.gz"
      sha256 "81a1b1cdddee74a6c313af30eda8f8fd7cdd12a4dc74c3a1254ef619ac6b6b90"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
