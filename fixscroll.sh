#!/bin/bash
echo "This will apply to some of the chromium-based browsers (Brave, Google Chrome, Chromium, & Edge)"

# Array of the said browsers
browsers=("brave-browser" "google-chrome" "microsoft-edge" "chromium")

for browser in "${browsers[@]}"; do
    # Path to your .desktop file
    desktop_file="/usr/share/applications/${browser}.desktop"
    
    # Check if the file has the flag enabled
    grep "MiddleClickAutoscroll" "$desktop_file" > /dev/null
    exists=$?
    
    if [[ $exists != 0 ]]; then
        # Use a temporary file to store the modified content
        temp_file="${desktop_file}.temp"
        
        # Loop through the lines in the .desktop file
        while IFS= read -r line; do
            if [[ $line == Exec=* ]]; then
                # Append "--enable-blink-features=MiddleClickAutoscroll" to lines that start with "Exec"
                line="${line} --enable-blink-features=MiddleClickAutoscroll"
            fi
            # Append the line to the temporary file
            echo "$line" >> "$temp_file"
        done < "$desktop_file"
        
        # Replace the original .desktop file with the modified temporary file
        sudo mv "$temp_file" "$desktop_file"
        echo "Middle click scroll for $browser is ready to use!"
    else
        echo "Middle click scroll for $browser is already enabled!"
    fi
done
