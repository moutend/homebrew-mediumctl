class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.4.0'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.4.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.0/' << @@binname
    sha256 '708ab8f7f9872004ec4af2d95d70da72f565635b3fc757f8057e49a5a59569fe'
  else
    @@binname = 'mediumctl_darwin_386_v0.4.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.0/' << @@binname
    sha256 '41320fbe77e0b539cadb3e4c98581c502b44b7748fccb5b1e5b2322d1e9a4bca'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
