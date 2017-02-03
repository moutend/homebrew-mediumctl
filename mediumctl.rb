class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.2.1'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.2.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.2.1/' << @@binname
    sha256 'c5c0c1efa3307fcf140f879fba9dcb34ce7c6fda02e9ed8a116b719b4c9a39b2'
  else
    @@binname = 'mediumctl_darwin_386_v0.2.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.2.1/' << @@binname
    sha256 'd90d3bb27ffafc322e62db05a4d4b97d92685ee872ebc6955e5e0e869bedd68e'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
