#!/usr/bin/env zsh 

# CORGO R&D TECHNOLOGY
# Yoko Parks 
# 15 Apr 2025


# This Software is Free for Personal/Educational Use
# Enterprise Use Requires Additional Authorization



#Loop Control Variables:

proceed=""
loop=false



while [ "$loop" = false ]
do



#Initial User Prompt & Splash-Screen:

clear


echo "  ****  **   ****  ****   *     *   ***    *** "
sleep .2
echo "  *    *  *  *     *      * * * *  *   *  *    "
sleep .2
echo "  ***  ***   ***   ***    *  *  *  *****  *    "
sleep .2
echo "  *    *  *  *     *      *     *  *   *  *    "
sleep .2
echo "  *    *   * ****  ****   *     *  *   *   *** "
sleep .2


# Version Info:
echo "  ################VERSION 1.0.1################"



echo ' Loading Program \r '
echo ' Loading Program. \r '
echo ' Loading Program.. \r '
echo ' Loading Program... \r '
sleep 5


# Disclaimer:

echo -ne "WARNING: THIS MAY VOID YOUR WARRANTY! ENTER AT YOUR OWN PERIL!\n"
echo -ne "This Program Enables Homebrew, If you don't want that please exit via ^C.\n"
echo -ne "Otherwise Type "GO" to proceed: "
read proceed



#Install Phase:

if [[ "$proceed" == "GO" || "$proceed" == "go" ||"$proceed" == "Go" ]]; then
loop=true



    # Install Rosetta:

    echo -ne 'Enabling x64/x86 Intel Compatibility Layer! \r'
    sleep .5
    echo -ne 'Enabling x64/x86 Intel Compatibility Layer!. \r'
    sleep .5
    echo -ne 'Enabling x64/x86 Intel Compatibility Layer!.. \r'
    sleep .5
    echo -ne 'Enabling x64/x86 Intel Compatibility Layer!...\r'



    # Install Cmd 

    clear
    udo /usr/sbin/softwareupdate --install-rosetta --agree-to-license




    # Check for Homebrew if not installed do it!:

    if [[ -z "$(command -v brew)" ]]; then
        echo "Installing Hombrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


    else

        echo -ne 'Homebrew Enabled! Updating\r'
        sleep 1
        echo -ne 'Homebrew Enabled! Updating.\r'
        sleep 1
        echo -ne 'Homebrew Enabled! Updating..\r'
        sleep 1
        echo -ne 'Homebrew Enabled! Updating...\r'
        sleep 1


        # Execute Update Cmd

        brew update



fi #EoInstall



else
   
    echo -ne "I'm Sorry, But That Input Isn't Recognized."


fi #EoMainFunct


done #EoWhileLoop











# Upcoming Features: Success Validaton 


     # Check brew Install
     # Check Rosetta Install


    # If all good then: Say_ "Success! Homebrew is now enabled on your system!"
    # Else Say_ "Something went wrong, please try again as sudo."

    # Exit 0 


