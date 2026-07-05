class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.19"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.19/txco_0.2.19_darwin_arm64.tar.gz"
      sha256 "8aafd12f059b72fa190b5afb1c71413134d295895fb5ecc1d67f9e6ee6fcf667"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.19/txco_0.2.19_darwin_amd64.tar.gz"
      sha256 "a5b0b44b9af8dfc5d3c8f648f34648d4a5f237bf09a6681e98d97c47161e8478"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.19/txco_0.2.19_linux_arm64.tar.gz"
      sha256 "ae98ddcb774269725f5eb3f3c76470f6422b7b4545e83c5462c694ca4dfecb81"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.19/txco_0.2.19_linux_amd64.tar.gz"
      sha256 "badd9b4a766c47feb9113b79ae95c5da5da6f14dd457cbc1a7a24b1615a82fcb"
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
