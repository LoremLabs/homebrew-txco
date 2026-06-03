class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.5"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.5/txco_0.2.5_darwin_arm64.tar.gz"
      sha256 "2d4d7d4cd2f79de5f49a42f7161f0c5216b9a71511ae914417bd8d5cd550b567"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.5/txco_0.2.5_darwin_amd64.tar.gz"
      sha256 "84b3ccfe56ae79df3d2a9fbc2ef6b06cd274fe62a0d7888e64df952f896759e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.5/txco_0.2.5_linux_arm64.tar.gz"
      sha256 "1dc93a0d2817d07bb014152739e500c7dfb6633b4cc38a437f1b510917158b20"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.5/txco_0.2.5_linux_amd64.tar.gz"
      sha256 "f0433697a1ce3daa925dfd29abe50711be4e99c26942e25d7997b4219f2de382"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
