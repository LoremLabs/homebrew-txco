class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.9"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.9/txco_0.2.9_darwin_arm64.tar.gz"
      sha256 "7e6050a19582126ae822b63297fd717098636d2a40cab4fad1514cc104c392f8"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.9/txco_0.2.9_darwin_amd64.tar.gz"
      sha256 "49a4c18a30314ebbf57415f98f511e7e542ec5fa7472853c1b38c7e095e1abb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.9/txco_0.2.9_linux_arm64.tar.gz"
      sha256 "cb39d4ee159be0613e4b4c92f99c58a8c00c4b99a196260ffa65e1fa72e99a08"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.9/txco_0.2.9_linux_amd64.tar.gz"
      sha256 "95f9828ba3a2db5b0c80f9c9f78ed17de007007a5e5a559a785d0285dfe0998c"
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
