
#!/bin/bash

# Define the scripts to be executed
while IFS= read -r line; do scripts+=("$line"); done < <(find /mnt/data/working_folder/.scripts -type f -name "*.sh" | sort)

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
            return
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
        return
    fi
    prompt_to_proceed $script
done

echo "All scripts executed successfully!"
