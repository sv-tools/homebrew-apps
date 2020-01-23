# This file was generated by GoReleaser. DO NOT EDIT.
class Grade < Formula
  desc "grade transforms Go benchmark data into various format so that you can uploads the data to a database and track the performance over time."
  homepage "https://github.com/sv-tools/grade"
  version "1.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sv-tools/grade/releases/download/v1.1.1/grade-v1.1.1-darwin-amd64.tar.gz"
    sha256 "2f30936f16f81590b70202dced96f69e342cebfdb01fe1e0a7304210bd0abf0d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sv-tools/grade/releases/download/v1.1.1/grade-v1.1.1-linux-amd64.tar.gz"
      sha256 "3987764843d5b0ec2ea499ad436507f3c283135838c95999dc3b4f9f7638faa9"
    end
  end

  def install
    bin.install "grade"
  end

  test do
    assert_equal `#{bin}/grade --version`, "grade version v#{version}"
  end
end
