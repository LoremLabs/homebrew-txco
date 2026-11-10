class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.60"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.60/txco_0.2.60_darwin_arm64.tar.gz"
      sha256 "ce39f2f5c39608df19299e49612eda7b2505453057b06629d88584cd15e8dece"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.60/txco_0.2.60_darwin_amd64.tar.gz"
      sha256 "abc03f80dc7cd35a08682845a7c351137959bbf86b6e57496583ab11941fced6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.60/txco_0.2.60_linux_arm64.tar.gz"
      sha256 "36ffdafff3c525ecfb2a8e3d657bfce76f327a04d3568f63fa3e9c26137290a6"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.60/txco_0.2.60_linux_amd64.tar.gz"
      sha256 "7cc762f5bc8308acc715b07494be5bf8ad32766a192b39b7719501df17b56a7d"
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
