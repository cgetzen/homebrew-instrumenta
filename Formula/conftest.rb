# This file was generated by GoReleaser. DO NOT EDIT.
class Conftest < Formula
  desc "Test your configuration using Open Policy Agent"
  homepage "https://github.com/instrumenta/conftest"
  version "0.14.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/instrumenta/conftest/releases/download/v0.14.0/conftest_0.14.0_Darwin_x86_64.tar.gz"
    sha256 "16ea872ce2f8597f05cf5a4a7590e3aa0a125f4e70834adb0d40a5d1cf7184c7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/instrumenta/conftest/releases/download/v0.14.0/conftest_0.14.0_Linux_x86_64.tar.gz"
      sha256 "23f2d799ea6bc3687863de962392940f7bb5768d507c7d43e30e468a308c68ea"
    end
  end

  def install
    bin.install "conftest"
  end

  test do
    system "#{bin}/conftest --version"
  end
end
