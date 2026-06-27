class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.16"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.16/txco_0.2.16_darwin_arm64.tar.gz"
      sha256 "dbf8c0f7f9e473da7f6b85e9b783efe7094903e1248d61cb45132f4bb5528da6"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.16/txco_0.2.16_darwin_amd64.tar.gz"
      sha256 "574b7aef7fd0d86419257c27a60d24190867398ab4eba1a2fd8d07510b2561fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.16/txco_0.2.16_linux_arm64.tar.gz"
      sha256 "e02200180e89ded2480090228ec3acbec7229631982f450972d7e700b438f3c4"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.16/txco_0.2.16_linux_amd64.tar.gz"
      sha256 "10435c44d37e1ed7faab96c6f2b2ad5f2da7b0299860fadfbc24224e9687454d"
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
