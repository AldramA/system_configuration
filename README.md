# Void Linux System Configuration

This repository contains my system configurations, scripts, and patches for Void Linux.

## Structure
```
config/            # Config files (GTK, sxhkd, etc.)
local/bin/         # Custom scripts (e.g., usbmount, statusbar.sh)
src/               # Source and patches for dwm, st, dmenu, etc.
```

## Usage
1. Copy `config/` to `~/.config/`:
   ```bash
   cp -r config/* ~/.config/
   ```
2. Make scripts executable and add to `PATH`:
   ```bash
   chmod +x local/bin/*
   export PATH=$PATH:~/local/bin
   ```

## Notes
- Uses `doas` for admin tasks.
- Patches available in `src/patches/` for dwm and st.

## License
For personal use. Modify at your own risk.

## Acknowledgments
- Thanks to the Void Linux community and the developers of dwm, st, dmenu, and sxhkd for their tools and documentation.

Feel free to modify these configurations as needed for your own system.
