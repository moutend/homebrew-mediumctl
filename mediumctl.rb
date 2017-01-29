class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.1.1'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.1.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.1/' << @@binname
    sha256 '257877f0869424484688a33c7cbae95b59428f0ae8cc376e72c648c0ac6f615f'
  else
    @@binname = 'mediumctl_darwin_386_v0.1.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.1/' << @@binname
    sha256 'ddd9ea3158ee7c5b0e4b60a49523c12cdc99f43931855b1a33ff51d6bb572c08'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
