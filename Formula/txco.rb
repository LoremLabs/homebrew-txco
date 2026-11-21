class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.63"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.63/txco_0.2.63_darwin_arm64.tar.gz"
      sha256 "93a781785e0cbeef476131dc9284cdeea3732d4630ce69582e87218198bc84ca"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.63/txco_0.2.63_darwin_amd64.tar.gz"
      sha256 "3381774afe819cebe0f69b6eaf9502a9a140a40ef9ecba4e5097b4be2613734e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.63/txco_0.2.63_linux_arm64.tar.gz"
      sha256 "a706e5ba005b98263b6214821a101bf4cf9f20fb82a3aefb406c5673933c51db"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.63/txco_0.2.63_linux_amd64.tar.gz"
      sha256 "22ac11d9d9bcf829671b83a0bbb90729bc6626d45b1682894e85729659a9b9d4"
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
