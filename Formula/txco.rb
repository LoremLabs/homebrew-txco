class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.4/txco_0.2.4_darwin_arm64.tar.gz"
      sha256 "66e57833f12bf7b6affdf1f2b908bca489bdde6a8c693fe15025be0fcac6530e"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.4/txco_0.2.4_darwin_amd64.tar.gz"
      sha256 "b57c906e0be0eeab880750da34802e93e3b4637a6523d50ca001ae6d7d0bd074"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.4/txco_0.2.4_linux_arm64.tar.gz"
      sha256 "590eb6297ea0da971612a0721ce6ecfd190a3b192803f4e1cb17e6bb3feb2482"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.4/txco_0.2.4_linux_amd64.tar.gz"
      sha256 "8d6a5d080313658da868c681aa34078b827dca7f9e42aa54964ab4a9c4d9865b"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
