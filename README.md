# national-bridge-inventory

A script to download the [National Bridge Inventory](https://www.fhwa.dot.gov/bridge/nbi.cfm) dataset from 2016 and rewrite it to convert the DDMMSSSS format latitude and longitude to decimal lat/lon.

The output is suitable for filtering and mapping.

## Use

1. Check out the code from GitHub.

    ```
    git clone git@github.com:iandees/national-bridge-inventory.git
    ```

1. Go into the directory it created and run the Makefile to generate the cleaned output.

    ```
    cd national-bridge-inventory
    # To generate per-state files only
    make states
    # To generate a single file with the data for the whole nation
    make nation
    ```
