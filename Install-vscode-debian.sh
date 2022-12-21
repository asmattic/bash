# Update the package manager cache
sudo apt update

# Add the Microsoft GPG key
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

# Add the Visual Studio Code package repository
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Update the package manager cache again
sudo apt update

# Install Visual Studio Code
sudo apt install -y code

# Remove the Microsoft GPG key and package repository configuration file
rm microsoft.gpg
sudo rm /etc/apt/sources.list.d/vscode.list
