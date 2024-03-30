#!/bin/bash

# Function to execute gobuster commands
execute_gobuster() {
    case "$1" in
        "dir")
            gobuster dir -u "$2://$3" -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-small.txt
            ;;
        "dns")
            gobuster dns -d "$2://$3" -w /usr/share/seclists/Discovery/DNS/namelist.txt
            ;;
        "both")
            gobuster dir -u "$2://$3" -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-small.txt &
            gobuster dns -d "$2://$3" -w /usr/share/seclists/Discovery/DNS/namelist.txt
            ;;
        *)
            echo "Invalid option: $1. Please choose 'dir', 'dns', or 'both'."
            ;;
    esac
}

# Main script starts here
echo "Please enter the command (dir/dns/both):"
read command_type

echo "Please enter the command input (e.g., example.com):"
read command_input

echo "Please enter the protocol (http/https) [optional, defaults to http]:"
read protocol
protocol=${protocol:-http}  # Default to http if not provided

execute_gobuster "$command_type" "$protocol" "$command_input"
