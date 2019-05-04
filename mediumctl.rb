class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.4.0'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.4.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.0/' << @@binname
    sha256 'c884109d628102c14e0725483fd6238ed41c179008a42c8632dcf174b08087ac'
  else
    @@binname = 'mediumctl_darwin_386_v0.4.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.0/' << @@binname
    sha256 '7cdc233858d81e52098eb868c97208de5fa13e0145cdeb6cd7745d213b011702'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
