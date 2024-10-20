# This script is based on an implementation found in [https://github.com/atelier-socle/AppRepositoryTemplate/blob/master/scripts/xcode/copy_plists.sh].
# Modified to suit the needs of this project.

# Get local variables
env=$1
plists_destination=$2

# Validate inputs
if [[ -z "$env" || -z "$plists_destination" ]]; then
  echo "Usage: $0 <environment> <plists_destination>"
  exit 1
fi

if [[ ! -d "$plists_destination" ]]; then
  echo "Error: Destination directory does not exist."
  exit 1
fi

echo "Using $env environment"

# Check if there are any plist files available
plists_available=($(find "./config/plists/$env" -name "*.plist"))

if [[ ${#plists_available[@]} -eq 0 ]]; then
  echo "No plist files found in the $env environment."
  exit 0
fi

plists_filename=()
for filename in "${plists_available[@]}"; do
  plists_filename+=("$(basename "$filename" .plist)")
done

echo "Files in environment directory: ${plists_filename[*]}"

# Copy expected plists to destination
cp "${plists_available[@]}" "$plists_destination"

# Success message
echo "Plist files successfully copied to $plists_destination"
