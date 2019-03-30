#!/bin/sh

# Copy the basic settings.
if [ "$1" = "--local" ]; then
    cp -r ./src/.vifm ~/
elif [ "$1" = "--server" ]; then
    cp -r ./src/.vifm ~/
    echo "colorscheme server" >> ~/.vifm/vifmrc
else
    echo "Sorry!"
    echo "Select one of the installation types:"
    echo "    --local - for local computer;"
    echo "    --server - for server."
    echo "    $1 - not supported!"

    exit 1
fi

echo "Done!"
exit 0

