class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.1.0'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.1.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.0/' << @@binname
    sha256 '7df85f537e1cfd06b8a9c17956c6046ef9da585b790882e84d873566140f41ce'
  else
    @@binname = 'mediumctl_darwin_386_v0.1.0'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.1.0/' << @@binname
    sha256 '79ba14d62f0b8a99f4f8b7776814955e06e4a4e49f26cf5f928e0c355a0bfa29'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
