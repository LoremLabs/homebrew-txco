class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.21"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.21/txco_0.2.21_darwin_arm64.tar.gz"
      sha256 "ba59c8763f2620ddf83d84b1dc731880c2b7cb54bd075232661ec012f02ad040"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.21/txco_0.2.21_darwin_amd64.tar.gz"
      sha256 "e5894375e6832401fc37701698248282e24122dd372f1f0ba8dadbe35619fd1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.21/txco_0.2.21_linux_arm64.tar.gz"
      sha256 "4c73e622d401f9884d858f8a352d29cd450825c77440477a9c4e287f599cfbf9"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.21/txco_0.2.21_linux_amd64.tar.gz"
      sha256 "9adf26179cdf0ba36054183d0285fe14018d3a1742bc37e0d10cee004aa42b51"
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
