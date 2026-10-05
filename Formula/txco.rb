class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.42"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.42/txco_0.2.42_darwin_arm64.tar.gz"
      sha256 "2f79ba937f74a342d0c84d21e49f1d1b696d25135dee58c5c139ed0f644320e3"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.42/txco_0.2.42_darwin_amd64.tar.gz"
      sha256 "43b8cd58a17ef7f4575a62d9c63fa232296c4b28ae629b78bf38bc958c9942e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.42/txco_0.2.42_linux_arm64.tar.gz"
      sha256 "3e12910c20ec6162adaa44c91a85e9d25b582686a5d7cd047310398eb6929fb0"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.42/txco_0.2.42_linux_amd64.tar.gz"
      sha256 "1df42f3c06f788d366fae41533e207310068d421c8161eebf4e50ec39c8c7c5d"
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
