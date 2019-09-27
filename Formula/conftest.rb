# This file was generated by GoReleaser. DO NOT EDIT.
class Conftest < Formula
  desc "Test your configuration using Open Policy Agent"
  homepage "https://github.com/instrumenta/conftest"
  version "0.13.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/instrumenta/conftest/releases/download/v0.13.0/conftest_0.13.0_Darwin_x86_64.tar.gz"
    sha256 "125cbf3de25dae824de2781c1ab971ee13964659dbfa6ddb2477fdb89aecc11b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/instrumenta/conftest/releases/download/v0.13.0/conftest_0.13.0_Linux_x86_64.tar.gz"
      sha256 "157c4ff3af9c0a49a268a25ea7597c54ef5021a7d48efc1fb7f4c779cbeb2900"
    end
  end

  def install
    bin.install "conftest"
  end

  test do
    system "#{bin}/conftest --version"
  end
end
