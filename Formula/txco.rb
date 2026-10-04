class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.40"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.40/txco_0.2.40_darwin_arm64.tar.gz"
      sha256 "cc29cbed6345002f21aa1ed8e9811a4151ca49a8253ba4eca9f724b79699c831"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.40/txco_0.2.40_darwin_amd64.tar.gz"
      sha256 "d279400c42754d7bf0a0b35a57d94365b4433d9d4fd6c3d33f15f996b53e8b0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.40/txco_0.2.40_linux_arm64.tar.gz"
      sha256 "ca332feea7e83e4c33eef90b98dcf73f988454adbf4fd050ed78a6bfabb3cc45"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.40/txco_0.2.40_linux_amd64.tar.gz"
      sha256 "e4fbc6b278da8eb329fd1db0a8abf2be57cce664f02a6d16153d870123d22509"
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
