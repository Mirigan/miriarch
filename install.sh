# Exit immediately if a command exits with a non-zero status
# set -e

# Install everything
for f in ./install/*.sh; do
  echo -e "\nRunning installer: $f"
  source "$f"
done
echo " Everthing is installed"

# After everything is installed
# stow configs file 
echo "Now it's time link config files"
cd config
stow .

cd ..
