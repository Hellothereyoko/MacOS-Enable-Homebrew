
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
sleep .2
echo ' Loading Program. \r '
sleep .2
echo ' Loading Program.. \r '
sleep .2
echo ' Loading Program... \r '


sleep 2.5


# Disclaimer:

echo -ne "WARNING: THIS MAY VOID YOUR WARRANTY! ENTER AT YOUR OWN PERIL!\n"
echo -ne "This Program Enables Homebrew, If you don't want that please exit via ^C.\n"
echo -ne "Otherwise Type "GO" to proceed: "
read proceed



#INSTALL PHASE:

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

    clear
    sudo /usr/sbin/softwareupdate --install-rosetta --agree-to-license




    # Check for Homebrew if not installed do it!:

    if [[ -z "$(command -v brew)" ]]; then
        echo "Installing Homebrew..."
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

        clear
        brew update

        fi #EoCheckForBrew



# VALIDATION PHASE:

    clear

    # Declare validation variables w/o initialization
    declare brew_status
    declare rosetta_status

    echo "Validating Installation. \r"
    sleep .2
    echo "Validating Installation.. \r"
    sleep .2
    echo "Validating Installation... \r"
    sleep .2



     # Check brew Install
     brew --version

     if [[ $? -eq 0 ]]; then
         brew_status="OK!"
     else
         brew_status="ERR!"
     fi



     # Check Rosetta Install

        if [[ -d "/Library/Apple/usr/share/rosetta" ]]; then
            rosetta_status="OK!"
        else
            rosetta_status="ERR!"
        fi


    # VALIDATION OUTPUT:
    if [[ "$brew_status" = "OK!" ]] && [[ "$rosetta_status" = "OK!" ]]; then
        echo "Validation Complete! All Systems Go!"
        echo "Exiting..."
        exit 0
    else
        echo "Something Went Very Wrong! Did you use sudo?"
        exit 1
    fi


fi #EoInstall



else
   
    echo -ne "I'm Sorry, But That Input Isn't Recognized."


fi #InvalidInput





done #EoWhileLoop



