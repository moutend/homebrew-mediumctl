class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.2.2'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.2.2'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.2.2/' << @@binname
    sha256 'b1a9a0ade3b364443ca612310c99f5f8d70bcfccd5f97181b04136288c641428'
  else
    @@binname = 'mediumctl_darwin_386_v0.2.2'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.2.2/' << @@binname
    sha256 'c4cd576320cf799134ae7dfeee73b34a9be39657b217a29fa30510fd199cf483'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
