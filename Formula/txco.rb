class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.1/txco_0.2.1_darwin_arm64.tar.gz"
      sha256 "889cb93a2eca77d5e3229ab2329a454ba28bc37d64d785641b4dcfa6750cf087"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.1/txco_0.2.1_darwin_amd64.tar.gz"
      sha256 "a53bb31708bcc49830496d76509962c1a95c0287cc7c526c38b4c32917bdbec4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.1/txco_0.2.1_linux_arm64.tar.gz"
      sha256 "6694fec21c18388aa90b1c373874458498d552c0b3a2abe189fc929eaa07a3f2"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.1/txco_0.2.1_linux_amd64.tar.gz"
      sha256 "f41dfe354da0abe6abdcddfd3add2f61e259b461e930ef7772fd91f824128a8b"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
