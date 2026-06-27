class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.17"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.17/txco_0.2.17_darwin_arm64.tar.gz"
      sha256 "03f4efac8e4cdea489f8d32e6a3a386aa373b19787ad62c03071ecc5c446cf2c"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.17/txco_0.2.17_darwin_amd64.tar.gz"
      sha256 "1f8460ebf1f5a0c95261d0b4b114bb32fa02542f0f0deeb6484a8086ed93f15d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.17/txco_0.2.17_linux_arm64.tar.gz"
      sha256 "01ca9c22a71f51c556c0966049773e5af1e46de8ff5b4ca87abcc1adc2458908"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.17/txco_0.2.17_linux_amd64.tar.gz"
      sha256 "cf7c43fc5830aef65eac3b43edeceef72efe90f5ebb8968b2b3467c7c7765271"
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
