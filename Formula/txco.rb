class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.24"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.24/txco_0.2.24_darwin_arm64.tar.gz"
      sha256 "18ff78803a6901a2a117f859ee2b36f32b4efdecf6f7abbb342a8d742919418e"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.24/txco_0.2.24_darwin_amd64.tar.gz"
      sha256 "48ad2a601f7e0033b214ea04073b522f55ae2b603c6f4668d0a54b6ecc047c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.24/txco_0.2.24_linux_arm64.tar.gz"
      sha256 "150f551d59feb2f4ddfe7853c64256d35367683e49edddf93c2169007e1790c4"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.24/txco_0.2.24_linux_amd64.tar.gz"
      sha256 "0f4e372d5f30602a80a00812439063144466b02a667616dc3d90f798c6f0bd6b"
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
