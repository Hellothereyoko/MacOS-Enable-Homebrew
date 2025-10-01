
#!/usr/bin/env zsh 

# CORGO R&D TECHNOLOGY
# Yoko Parks 
# 30 Sep 2025


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
echo ""
sleep .2


# Version Info:
echo "  ################VERSION 1.0.1################"



printf 'Loading Program   \r'
sleep .2
printf 'Loading Program.  \r'
sleep .2
printf 'Loading Program.. \r'
sleep .2
printf 'Loading Program...\r'


sleep 2.5
clear


# Disclaimer:
printf "\n"
printf "WARNING: THIS MAY VOID YOUR WARRANTY! ENTER AT YOUR OWN PERIL!\n"
printf "This Program Enables Homebrew, If you don't want that please exit via ^C.\n"
printf "Otherwise Type "GO" to proceed: "
read proceed



#INSTALL PHASE:

if [[ "$proceed" == "GO" || "$proceed" == "go" ||"$proceed" == "Go" ]]; then
loop=true



    # Install Rosetta:

    printf 'Enabling x64/x86 Intel Compatibility Layer!   \r'
    sleep .5
    printf 'Enabling x64/x86 Intel Compatibility Layer!.  \r'
    sleep .5
    printf 'Enabling x64/x86 Intel Compatibility Layer!.. \r'
    sleep .5
    printf 'Enabling x64/x86 Intel Compatibility Layer!...\r'

    clear
    sudo /usr/sbin/softwareupdate --install-rosetta --agree-to-license




    # Check for Homebrew if not installed do it!:

    if [[ -z "$(command -v brew)" ]]; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


    else

        clear
        printf 'Homebrew Enabled! Updating   \r'
        sleep 1
        printf 'Homebrew Enabled! Updating.  \r'
        sleep 1
        printf 'Homebrew Enabled! Updating.. \r'
        sleep 1
        printf 'Homebrew Enabled! Updating...\r'
        sleep 1

        clear
        brew update

        fi #EoCheckForBrew



# VALIDATION PHASE:

    clear

    # Declare validation variables w/o initialization
    brew_status=""
    rosetta_status=""

    printf 'Validating Installation   \r'
    sleep .2
    printf 'Validating Installation.  \r'
    sleep .2
    printf 'Validating Installation.. \r'
    sleep .2
    printf 'Validating Installation...\r'
    sleep .2



     # Check brew Install
     brew --version

     if [[ $? -eq 0 ]]; then
         brew_status="OK!"
     else
         brew_status="ERR!"    
     fi

     clear



     # Check Rosetta Install

        if [[ -d "/Library/Apple/usr/share/rosetta" ]]; then
            rosetta_status="OK!"
        else
            rosetta_status="ERR!"
        fi


    # VALIDATION OUTPUT:

    echo "Brew Status: $brew_status"
    sleep .2
    echo "Rosetta Status: $rosetta_status"
    sleep .2

    if [[ "$brew_status" = "OK!" ]] && [[ "$rosetta_status" = "OK!" ]]; then
        echo ""
        echo "Validation Complete! All Systems Go!"
        echo "Exiting..."
        exit 0
    else
        echo "Something Went Very Wrong! Did you use sudo?"
        exit 1
    fi

else
   
    echo "I'm Sorry, But That Input Isn't Recognized."


fi #EoInstall








done #EoWhileLoop



