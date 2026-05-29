class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.0/txco_0.2.0_darwin_arm64.tar.gz"
      sha256 "4b525e3fa2c1373f98268bfd3f5e51da748247533fc98aa04e9e696137c12453"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.0/txco_0.2.0_darwin_amd64.tar.gz"
      sha256 "8a42983cee388e07fd7eb736c880a641c038c611587fa42a5a96cddaad0c81b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.0/txco_0.2.0_linux_arm64.tar.gz"
      sha256 "81e036b634e3df380840924611c5c467fdc02ab4abce3265943665e806238348"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.0/txco_0.2.0_linux_amd64.tar.gz"
      sha256 "5a1178221fbb0c5c74203eb9bb0eb82a6926197890463f6b5ee1d79b0e0d58b0"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
