class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.20"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.20/txco_0.2.20_darwin_arm64.tar.gz"
      sha256 "0693a93300bcd651d43168cfca57ca26827259bdb341667b31ef7cc2cd125f88"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.20/txco_0.2.20_darwin_amd64.tar.gz"
      sha256 "a824acfe3917b1f042f1c31e141d3ac3a617697d6311915d66dc404949a27c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.20/txco_0.2.20_linux_arm64.tar.gz"
      sha256 "7bc0d76a31388006fdc000957b6c8064c6beedf64927cba9c14e1ddc00d2ef57"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.20/txco_0.2.20_linux_amd64.tar.gz"
      sha256 "d6bf1b8b907b1f79f8124bc50f808b403f866f0b6621dafc0cdd13e39bc3e4bb"
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
