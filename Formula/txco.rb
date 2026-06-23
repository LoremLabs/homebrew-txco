class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.14"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.14/txco_0.2.14_darwin_arm64.tar.gz"
      sha256 "ec61df790203c4e6f2fe0bd0f8bfdbf7910ef99d2d354228f67afabfc0f316fa"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.14/txco_0.2.14_darwin_amd64.tar.gz"
      sha256 "2f1ff2874a52816b3a822cdfaf8194f58ac26c45ecc8a8ee6c7863a2c404ceb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.14/txco_0.2.14_linux_arm64.tar.gz"
      sha256 "d04fee2e2d32bff97f5b12991e534a1bf98a37a955abf4a4e14bcf26fb6216b6"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.14/txco_0.2.14_linux_amd64.tar.gz"
      sha256 "2948304d17ae7b9162dfed34f7874290481eb1fc6ccc5b1ef2f1b9a3f5cd6aad"
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
