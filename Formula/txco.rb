class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.54"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.54/txco_0.2.54_darwin_arm64.tar.gz"
      sha256 "95ee07c803e3ae0afb4635566c9e7ddb3565045e79dd45097987873948624713"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.54/txco_0.2.54_darwin_amd64.tar.gz"
      sha256 "d833fdc35639967de627aeff69925b00d98baef9556a14f4f345bbc824864562"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.54/txco_0.2.54_linux_arm64.tar.gz"
      sha256 "1d342518c27bcc9a346f935bfb6ff9f4b4e525a9884aa3ae2b6a71d689c62485"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.54/txco_0.2.54_linux_amd64.tar.gz"
      sha256 "5cb2540e35b1b43de45f9edcfd9395e57ebaa960fbacac00fa9b93a78b9b9d6e"
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
