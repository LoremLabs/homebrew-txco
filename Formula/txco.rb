class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.3/txco_0.2.3_darwin_arm64.tar.gz"
      sha256 "0ea8a96e9afeee23dde1365e8a6aa658c0d762a25e914195b1ccf0c340302a89"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.3/txco_0.2.3_darwin_amd64.tar.gz"
      sha256 "4fe23a443a93bf3453c1b8ba32b5c2430064d2030744a641c7e89de5399d9f26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.3/txco_0.2.3_linux_arm64.tar.gz"
      sha256 "c4bbf268c7e9605a4f253c8d27fd87d11d8a56f7a439bec57eb6d7a239b12934"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.3/txco_0.2.3_linux_amd64.tar.gz"
      sha256 "52388b3321e5cc96f420fa42b961bb121b7b641fe30ed578aab28a3f035ada6f"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
