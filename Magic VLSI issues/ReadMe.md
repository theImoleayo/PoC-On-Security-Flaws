# README - Magic Script

## Overview
This script searches for the `sky130A.magicrc` file within the `/sky130/sky130A/libs.tech/magic/` directory structure. It prioritizes locations found within the `/home` directory. If a valid file is found, it copies it to `~/.magicrc` and then runs the Magic tool with the `SKY130A` technology.

## Prerequisites
- A Linux-based system
- `magic` installed and accessible via the terminal
- Proper permissions to search system directories

## Installation
1. Clone the repository to your local machine:
   ```bash
   git https://github.com/theImoleayo/PoC-On-Security-Flaws/tree/a218ea919406045ae14146dac45dd527acb65ebb/Magic%20VLSI%20issues)
   cd "Magic VLSI issues"
   ```
2. Ensure the script has execution permissions:
   ```bash
   chmod +x do_magic.sh
   ```

## Usage
Run the script using the command:
```bash
./do_magic.sh
or try
bash do_magic.sh
```

### What the Script Does:
1. Searches for the `sky130A.magicrc` file.
2. Filters the results to prioritize paths within `/home`.
3. Copies the selected file to `~/.magicrc`.
4. Changes to the home directory (`~`).
5. Runs the Magic tool with the `SKY130A` technology.

## Troubleshooting
- If no valid file is found, ensure that the required directory structure exists.
- Run the script with `sudo` if permission errors occur.
- Verify `magic` is installed by running:
  ```bash
  magic -v
  ```

## License
This project is licensed under the MIT License.

