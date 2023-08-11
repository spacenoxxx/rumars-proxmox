
#!/bin/bash

# Define the scripts to be executed
scripts=(".scripts/1.switch_repo.sh" ".scripts/2.network_setup.sh" ".scripts/3.autosshscript.sh")

# Function to prompt the user
prompt_to_proceed() {
    read -p "Do you want to execute $1? (yes/no): " choice
    case "$choice" in
        y|Y|yes|YES ) 
            # Execute the script
            bash "$1"
            ;;
        n|N|no|NO ) 
            echo "Aborted."
            exit 1
            ;;
        * ) 
            echo "Invalid choice."
            prompt_to_proceed $1
            ;;
    esac
}

# Main loop to iterate over each script
for script in "${scripts[@]}"; do
    # Check if the script exists
    if [[ ! -f $script ]]; then
        echo "Error: $script not found!"
        exit 1
    fi
    prompt_to_proceed $script
done

echo "All scripts executed successfully!"
