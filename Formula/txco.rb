class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.41"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.41/txco_0.2.41_darwin_arm64.tar.gz"
      sha256 "b3579acfe3b97c04a85fcf233f3b1718da4cef31aaf20c34e4721e01d8b2c93f"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.41/txco_0.2.41_darwin_amd64.tar.gz"
      sha256 "ffd0bf95118f0551d084f632bff89fdc999ba98686db7a131b47910d4a6380d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.41/txco_0.2.41_linux_arm64.tar.gz"
      sha256 "acb30b6c53a2376b943d4dfe9e2fd598d3c84d303967ff6f2cb29bcaf6e214e1"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.41/txco_0.2.41_linux_amd64.tar.gz"
      sha256 "7503f5ed1021d5c8eb8fa4bd231656330ec7ab0521ed1911d6cdb273bf3718d9"
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
