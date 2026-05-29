class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.2/txco_0.2.2_darwin_arm64.tar.gz"
      sha256 "80cef45a182db7547dceb63c912d432291002237af21bb354c2e669186039c27"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.2/txco_0.2.2_darwin_amd64.tar.gz"
      sha256 "461095b45ddc9c97db757f3e0557b8af94803db83a1a22ec935e4cdaa408aa11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.2/txco_0.2.2_linux_arm64.tar.gz"
      sha256 "a11f8cfa6b2e13a106e2d05912feaa37f3e21f3d27cb5bf73644bcdaf45cebe2"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.2/txco_0.2.2_linux_amd64.tar.gz"
      sha256 "45ed096a6d81395fca7f74c35319f47a37dc919130d9e77bade69e6b579d773d"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
