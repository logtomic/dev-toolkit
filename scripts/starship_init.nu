mkdir ~/.config/starship
starship init nu | save -f ~/.config/starship/init.nu

if (open $nu.config-path | find "use ~/.config/starship/init.nu" | count) == 0 {
    echo "use ~/.config/starship/init.nu" >> $nu.config-path
}

cp ~/.config/starship/starship.toml ~/.config/starship/starship.toml.bak
cp ../dotfiles/starship.toml ~/.config/starship/starship.toml
