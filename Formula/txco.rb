class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.27"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.27/txco_0.2.27_darwin_arm64.tar.gz"
      sha256 "95871fe2c05d276c7e30e0f1c4de4100c91afcf7c7bc702a3eedf435a7385ffd"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.27/txco_0.2.27_darwin_amd64.tar.gz"
      sha256 "a387f25e00ec122297897f9b6a496c233f850fd5af52354bdd0dc523eaaed293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.27/txco_0.2.27_linux_arm64.tar.gz"
      sha256 "0b02258f41596703b8ce46efde255463eab1aae2a8f4e4561fe1dd6fef55b217"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.27/txco_0.2.27_linux_amd64.tar.gz"
      sha256 "f2ebadc870bde3df64b84225d8b42dd026be5114c4e09bad34a181dd9ba42076"
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
