class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.46"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.46/txco_0.2.46_darwin_arm64.tar.gz"
      sha256 "bd8170b518afaaef67af91a9eae07151288daf5ac098bef4d03b36ef2530b4e5"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.46/txco_0.2.46_darwin_amd64.tar.gz"
      sha256 "d2c344cbe8bbf370c247fa5530f97084040c9e526c7a86cd9fa0ff035b778144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.46/txco_0.2.46_linux_arm64.tar.gz"
      sha256 "0685bf6f9116f8d7b1533c84a5ea6e1744396f4bf4969841d9a2be970d2bac55"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.46/txco_0.2.46_linux_amd64.tar.gz"
      sha256 "2ffe2644747006a5b9582b3177fc9abef40b0334ab11ce091906e52d13212b67"
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
