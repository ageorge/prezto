# Drupal related aliases.

#
# Aliases
#

alias cdd='cd_drupal_dir'

if type drush > /dev/null; then
    #
    # Drush location.
    #
    drush_command=$(which drush)
    drush_dir=$drush_command:A:h
    
    #
    # Enable drush's default bash autocomplete script.
    #
    autoload bashcompinit
    bashcompinit
    source $drush_dir/drush.complete.sh
fi
