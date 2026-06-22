class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.13"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.13/txco_0.2.13_darwin_arm64.tar.gz"
      sha256 "532ac302eb5b7bc7c0da0a72d7d2b1d6cf0602622d9c1575e03731b04d6e679f"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.13/txco_0.2.13_darwin_amd64.tar.gz"
      sha256 "5a8ea609379186c2238f7f13620812167860ad92e09e9508715d3ae1c0727e37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.13/txco_0.2.13_linux_arm64.tar.gz"
      sha256 "93a453877b17ade8de809f673ba0b8e0ced52fea60b71512a68035e632cc0939"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.13/txco_0.2.13_linux_amd64.tar.gz"
      sha256 "6fe4b9c2662e59c66f0edc0de65afd03f2cd0afdd1d9b0fd82e546ca169742ef"
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
