class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.51"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.51/txco_0.2.51_darwin_arm64.tar.gz"
      sha256 "4354a8a707b643e2b537bdc71ce918803ea8b195b800daa86af5af57ab4fa244"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.51/txco_0.2.51_darwin_amd64.tar.gz"
      sha256 "6611c743dd52b0838ff0dbdaaef35c141988ded607784515e79ac120ac556f24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.51/txco_0.2.51_linux_arm64.tar.gz"
      sha256 "b4ff8bca9fba4331231b88be67709799dafd8a5213cdfb6f07227c37595d1d6b"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.51/txco_0.2.51_linux_amd64.tar.gz"
      sha256 "555aaa3f3b9f7759b094b445ca95cc6456c568edeab62bd4ea7859fb65b1e6a3"
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
