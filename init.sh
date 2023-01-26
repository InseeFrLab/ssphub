# Install recent go version
GO_VERSION="1.18.4"
wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz && \
    sudo rm -rf /usr/local/go && \
    sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz

HUGO_VERSION="0.97.3" 
wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb && \
    sudo apt install "./hugo_extended_${HUGO_VERSION}_Linux-64bit.deb" && \
    rm -f hugo_extended_${HUGO_VERSION}_Linux-64bit.deb

# Install latest version of quarto
QUARTO_DL_URL="https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.129/quarto-1.3.129-linux-amd64.deb"
wget -q ${QUARTO_DL_URL} -O quarto.deb
sudo dpkg -i quarto.deb
quarto check install

rm quarto.deb

rm go${GO_VERSION}.linux-amd64.tar.*

export PATH="/usr/local/go/bin:${PATH}"

#hugo server -p 5000 --bind 0.0.0.0

