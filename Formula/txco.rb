class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.55"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.55/txco_0.2.55_darwin_arm64.tar.gz"
      sha256 "43aba532753facfd0acc37bf6a451dd1633fd796c3981235f9b436e278817e22"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.55/txco_0.2.55_darwin_amd64.tar.gz"
      sha256 "bceb6123a56d28260fb94283ee2b258a8f158b639c38a74444809f953868cef8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.55/txco_0.2.55_linux_arm64.tar.gz"
      sha256 "2b4beb3cb6b67f243fbb4a98b1324bf0c890b8e2b10a3ab65f78d94ed3466166"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.55/txco_0.2.55_linux_amd64.tar.gz"
      sha256 "672f0d03d4d2be6e62a53543f85ffd68d3f797c7767f156a112b912660acb55b"
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
