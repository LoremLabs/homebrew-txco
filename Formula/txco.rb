class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.25"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.25/txco_0.2.25_darwin_arm64.tar.gz"
      sha256 "0ed668f365312e6351524c8f8f22e6ce9117b157343551f3e4358484de5e5a9d"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.25/txco_0.2.25_darwin_amd64.tar.gz"
      sha256 "4bb01842b0653515656b45362864f23cfd6a145e457908618376c686736748b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.25/txco_0.2.25_linux_arm64.tar.gz"
      sha256 "be889cb880b2afa363a7eefe6e9dfd2121a193b907cd37c69b20113edd60eb17"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.25/txco_0.2.25_linux_amd64.tar.gz"
      sha256 "df372c0e84b41ab7dcb10a06acb8dceb9d23df51c3f9c0e315f0181681b3da27"
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
