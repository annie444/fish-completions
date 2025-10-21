# Fish Shell Completions
# Copy or symlink to $XDG_CONFIG_HOME/fish/completions/bat.fish
# ($XDG_CONFIG_HOME is usually set to ~/.config)

complete -c $bat -l italic-text -x -a "$italic_text_opts" -d "When to use italic text in the output" -n __bat_no_excl_args

complete -c $bat -s l -l language -x -k -a "(__bat_complete_list_languages)" -d "Set the syntax highlighting language" -n __bat_no_excl_args

complete -c $bat -l lessopen -d "Enable the $LESSOPEN preprocessor" -n __fish_is_first_arg

complete -c $bat -s r -l line-range -x -d "Only print lines [M]:[N] (either optional)" -n __bat_no_excl_args

complete -c $bat -l list-languages -f -d "List syntax highlighting languages" -n __fish_is_first_arg

complete -c $bat -l list-themes -f -d "List syntax highlighting themes" -n __fish_is_first_arg

complete -c $bat -s m -l map-syntax -x -a "(__bat_complete_map_syntax)" -d "Map <glob pattern>:<language syntax>" -n __bat_no_excl_args

complete -c $bat -l no-config -d "Do not use the configuration file"

complete -c $bat -l no-custom-assets -d "Do not load custom assets"

complete -c $bat -l no-lessopen -d "Disable the $LESSOPEN preprocessor if enabled (overrides --lessopen)"

complete -c $bat -l nonprintable-notation -x -a "unicode caret" -d "Set notation for non-printable characters" -n __bat_no_excl_args

complete -c $bat -s n -l number -d "Only show line numbers, no other decorations" -n __bat_no_excl_args

complete -c $bat -l no-paging -d "Alias for --paging=never" -n __bat_no_excl_args

complete -c $bat -l pager -x -a "$pager_opts" -d "Which pager to use" -n __bat_no_excl_args

complete -c $bat -l paging -x -a "$paging_opts" -d "When to use the pager" -n __bat_no_excl_args

complete -c $bat -s p -l plain -d "Show plain style" -n __bat_no_excl_args

complete -c $bat -l set-terminal-title -d "Sets terminal title to filenames when using a pager" -n __bat_no_excl_args

complete -c $bat -s A -l show-all -d "Show non-printable characters" -n __bat_no_excl_args

complete -c $bat -s s -l squeeze-blank -d "Squeeze consecutive empty lines into a single empty line" -n __bat_no_excl_args

complete -c $bat -l squeeze-limit -x -d "Set the maximum number of consecutive empty lines to be printed" -n __bat_no_excl_args

complete -c $bat -l strip-ansi -x -a "auto never always" -d "Specify when to strip ANSI escape sequences from the input" -n __bat_no_excl_args

complete -c $bat -s p -l plain -d "Disable decorations" -n __bat_no_excl_args

complete -c $bat -o pp -d "Disable decorations and paging" -n __bat_no_excl_args

complete -c $bat -s P -d "Disable paging" -n __bat_no_excl_args

complete -c $bat -l style -x -k -a "(__fish_complete_list , __bat_style_opts)" -d "Specify which non-content elements to display" -n __bat_no_excl_args

complete -c $bat -l tabs -x -a "$tabs_opts" -d "Set tab width" -n __bat_no_excl_args

complete -c $bat -l terminal-width -x -d "Set terminal <width>, +<offset>, or -<offset>" -n __bat_no_excl_args

complete -c $bat -l theme -x -a "$special_themes(command $bat --list-themes | command cat)" -d "Set the syntax highlighting theme" -n __bat_no_excl_args

complete -c $bat -l theme-dark -x -a "(command $bat --list-themes | command cat)" -d "Set the syntax highlighting theme for dark backgrounds" -n __bat_no_excl_args

complete -c $bat -l theme-light -x -a "(command $bat --list-themes | command cat)" -d "Set the syntax highlighting theme for light backgrounds" -n __bat_no_excl_args

complete -c $bat -s u -l unbuffered -d "This option exists for POSIX-compliance reasons" -n __bat_no_excl_args

complete -c $bat -s V -l version -f -d "Show version information" -n __fish_is_first_arg

complete -c $bat -l wrap -x -a "$wrap_opts" -d "Text-wrapping mode" -n __bat_no_excl_args

# Sub-command 'cache' completions
## Completion of the 'cache' command itself is removed for better UX
## See https://github.com/sharkdp/bat/issues/2085#issuecomment-1271646802

complete -c $bat -l build -f -d "Parse new definitions into cache" -n __bat_cache_no_excl

complete -c $bat -l clear -f -d "Reset definitions to defaults" -n __bat_cache_no_excl

complete -c $bat -l blank -f -d "Create new data instead of appending" -n "__bat_cache_subcommand; and not __fish_seen_argument -l clear"

complete -c $bat -l source -x -a "(__fish_complete_directories)" -d "Load syntaxes and themes from DIR" -n "__bat_cache_subcommand; and not __fish_seen_argument -l clear"

complete -c $bat -l target -x -a "(__fish_complete_directories)" -d "Store cache in DIR" -n __bat_cache_subcommand

complete -c $bat -l acknowledgements -d "Build acknowledgements.bin" -n __bat_cache_no_excl

complete -c $bat -s h -d "Print a concise overview of $bat-cache help" -n __bat_cache_no_excl

complete -c $bat -l help -f -d "Print all $bat-cache help" -n __bat_cache_no_excl

# vim:ft=fish
