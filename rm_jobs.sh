find . \( -name *.job[0-9]* -o -name *.[0-9]* \) -a \( -not -name headnode* \) -exec rm {} \;
