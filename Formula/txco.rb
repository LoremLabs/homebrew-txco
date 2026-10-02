class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.34"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.34/txco_0.2.34_darwin_arm64.tar.gz"
      sha256 "8cae38141a5fea247cee330939027e56236f6850f1074a672441c36511c532d7"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.34/txco_0.2.34_darwin_amd64.tar.gz"
      sha256 "7abfa8bba3e03e2296348b6698138e0f175f1d71bd1f59929d8b0f362b4b06eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.34/txco_0.2.34_linux_arm64.tar.gz"
      sha256 "efd553619521d7ec2496771529858413554605c13a621a3f83be545b2feb1ad9"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.34/txco_0.2.34_linux_amd64.tar.gz"
      sha256 "45e445c25913a628eeb9dce45d3b5a6c4ad65afe6e68ae651bfb153567e6f8c6"
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
