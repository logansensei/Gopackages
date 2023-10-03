#!/bin/bash

# Install libpcap-dev
sudo apt install -y libpcap-dev

# Define a list of Go packages
packages=(
    "github.com/projectdiscovery/naabu/v2/cmd/naabu"
    "github.com/projectdiscovery/nuclei/v2/cmd/nuclei"
    "github.com/projectdiscovery/mapcidr/cmd/mapcidr"
    "github.com/projectdiscovery/uncover/cmd/uncover"
    "github.com/projectdiscovery/asnmap/cmd/asnmap"
    "github.com/projectdiscovery/subfinder/v2/cmd/subfinder"
    "github.com/projectdiscovery/katana/cmd/katana"
    "github.com/projectdiscovery/tlsx/cmd/tlsx"
    "github.com/projectdiscovery/dnsx/cmd/dnsx"
    "github.com/projectdiscovery/alterx/cmd/alterx"
    "github.com/projectdiscovery/chaos-client/cmd/chaos"
    "github.com/ffuf/ffuf/v2"
    "github.com/glebarez/cero"
    "github.com/gwen001/github-subdomains"
    "github.com/tomnomnom/assetfinder"
    "github.com/tomnomnom/anew"
    "github.com/dwisiswant0/crlfuzz/cmd/crlfuzz"
    "github.com/hakluke/hakrawler"
    "github.com/hahwul/dalfox/v2"
    "github.com/lc/gau/v2/cmd/gau"
    "github.com/hakluke/hakrevdns"
    "github.com/tomnomnom/gf"
    "github.com/hakluke/haktrails"
    "github.com/tomnomnom/unfurl"
    "github.com/d3mondev/puredns/v2"
    "github.com/projectdiscovery/cdncheck/cmd/cdncheck"
    "github.com/mlcsec/headi"
    "github.com/tomnomnom/meg"
    "github.com/tomnomnom/qsreplace"
    "github.com/tomnomnom/waybackurls"
    "github.com/xm1k3/cent"
)

# Iterate over the packages and install them
for package in "${packages[@]}"
do
    echo "Installing $package..."
    go install -v $package
    echo "$package installed."
done

echo "All packages installed successfully."
