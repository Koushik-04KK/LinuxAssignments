#!/bin/bash

display_menu() {
    echo "========================="
    echo "System Information Menu"
    echo "========================="
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Show all available shells in your system"
    echo "8. Hard disk information"
    echo "9. CPU information"
    echo "10. Memory information"
    echo "11. File system information"
    echo "12. Currently running process"
    echo "13. Exit"
    echo -n "Please select an option (1-13): "
}

while true; do
    display_menu
    read -r option

    case $option in
        1)
            echo "Currently logged users:"
            w
            ;;
        2)
            echo "Your shell directory is: $SHELL"
            ;;
        3)
            echo "Your home directory is: $HOME"
            ;;
        4)
            echo "Operating System Information:"
            uname -a
            ;;
        5)
            echo "Current working directory is: $(pwd)"
            ;;
        6)
            echo "Number of users currently logged in:"
            who | wc -l
            ;;
        7)
            echo "Available shells on your system:"
            cat /etc/shells
            ;;
        8)
            echo "Hard disk information:"
            df -h
            ;;
        9)
            echo "CPU information:"
            lscpu
            ;;
        10)
            echo "Memory information:"
            free -h
            ;;
        11)
            echo "File system information:"
            df -T
            ;;
        12)
            echo "Currently running processes:"
            ps aux
            ;;
        13)
            echo "Exiting the system information tool. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option! Please choose a number between 1 and 13."
            ;;
    esac

    echo ""
    echo "Do you want to check another option? (y/n)"
    read -r continue_choice
    if [[ "$continue_choice" != "y" ]]; then
        echo "Goodbye!"
        exit 0
    fi
done
