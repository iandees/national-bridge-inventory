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

The cleaned data will be placed in the `data/` directory. The per-state data will have a filename with the two-character state code followed by `.csv`. The national data will have the filename `nationwide.csv`.

## Mapping

Once the cleaned data is generated, it can be opened with QGIS, a popular open source mapping tool. You can use QGIS's [Add tabular data](http://www.qgistutorials.com/en/docs/importing_spreadsheets_csv.html) feature to load the national or state-specific CSV files.
