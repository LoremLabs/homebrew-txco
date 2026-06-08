class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.6"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.6/txco_0.2.6_darwin_arm64.tar.gz"
      sha256 "593e7924bf14424b36f584d9ed3d29056b6306ab891eb1a45c83b923d15cbafe"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.6/txco_0.2.6_darwin_amd64.tar.gz"
      sha256 "27da119d331371d39d2b54a7d2325c3b7f1033c6e2b1450fccdaa23ed23c2d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.6/txco_0.2.6_linux_arm64.tar.gz"
      sha256 "e08ca235b4730ff7a6879026b9aeba695d257cf68d02d44ecae5b0533d10ae83"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.6/txco_0.2.6_linux_amd64.tar.gz"
      sha256 "2d5fa0db831d2aa9e065c210debae6ccfd91b26d28df6525361650a1d64434df"
    end
  end

  def install
    bin.install "txco"
  end

  test do
    system "#{bin}/txco", "--help"
  end
end
