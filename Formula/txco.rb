class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.47"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.47/txco_0.2.47_darwin_arm64.tar.gz"
      sha256 "cf4138e11f4f4f65c384091aecb1b20c4202d0390a259f7034049e0457a46b43"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.47/txco_0.2.47_darwin_amd64.tar.gz"
      sha256 "e64bef4c77a29d03b1b87378ea1def8d8add8a2df84ba545e10baeed05c06923"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.47/txco_0.2.47_linux_arm64.tar.gz"
      sha256 "4403d82287e6d7513d7bc52764f8e1257ce18f9294b89fa6a0a853a01e000c88"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.47/txco_0.2.47_linux_amd64.tar.gz"
      sha256 "cd56f00c2139528d8315ee87d427859cfe367ba2d6be597abcaf58efa0075b14"
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
