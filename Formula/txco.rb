class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.10"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.10/txco_0.2.10_darwin_arm64.tar.gz"
      sha256 "febd552f19e7a53d799cf5d446e4ab7faffc9a5ecc8a513a7e7eed910cb04582"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.10/txco_0.2.10_darwin_amd64.tar.gz"
      sha256 "136c9487a6eeeffc52cb7c252c99566455b54310867ea48035ced9346df9f2e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.10/txco_0.2.10_linux_arm64.tar.gz"
      sha256 "d45473a831cb3664d0ec6d71416258d32e0acd9e70d473110674111e157ef623"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.10/txco_0.2.10_linux_amd64.tar.gz"
      sha256 "4c88fa1a933f7a2cd97a21566477d86cb2921d6931eb1207a6885c817e66a2b1"
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
