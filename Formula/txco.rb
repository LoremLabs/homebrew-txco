class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.12"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.12/txco_0.2.12_darwin_arm64.tar.gz"
      sha256 "de189f8d571ddb7360c55a55d717841e8b7e89557e91650415fd10060d894ea8"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.12/txco_0.2.12_darwin_amd64.tar.gz"
      sha256 "04abb9023ad97fafc94dcead0a210c94f14c2db8eed4e879adcbee9ba1281411"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.12/txco_0.2.12_linux_arm64.tar.gz"
      sha256 "2d34bf9478c2890ec3f5c0901ed12c5b446ae49875a30e589ad2706dd063b596"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.12/txco_0.2.12_linux_amd64.tar.gz"
      sha256 "4d74645bc3cf7db437419d57abc92ec9059b4d1a7fe5ec861574476e072b22ca"
    end
  end

  def install
    bin.install "txco"
    # `thanks` is the same binary under a second name; argv[0] dispatches it
    # into room mode (`thanks <args>` == `txco room <args>`). install_symlink
    # lets Homebrew manage the second command with no post-install script.
    bin.install_symlink "txco" => "thanks"
  end

  test do
    system "#{bin}/txco", "--help"
    system "#{bin}/thanks", "--help"
  end
end
