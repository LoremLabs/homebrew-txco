class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.44"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.44/txco_0.2.44_darwin_arm64.tar.gz"
      sha256 "548e6bfe8ca1f056e812fd8afc2561ae04e41e43b7d9d1c927fcdd6ead2587ed"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.44/txco_0.2.44_darwin_amd64.tar.gz"
      sha256 "9ccd40234b7e98370c983832c7571a030e5fdc5bb6fb81aa770d3b11761b11b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.44/txco_0.2.44_linux_arm64.tar.gz"
      sha256 "103cae7729aca40ffbe3c989e7793ccefcfde2562470417374d6443b4030539b"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.44/txco_0.2.44_linux_amd64.tar.gz"
      sha256 "8bb4c1a84321a72102d8b2be7fdc928376152cd45dfdb09cc2e2ecfc6e5f6fd7"
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
