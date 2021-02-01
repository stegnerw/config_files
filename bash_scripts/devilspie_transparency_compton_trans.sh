#!/bin/bash

# Create .devilspie folder if it does not exist
if [ ! -d ~/.devilspie ]; then
  mkdir ~/.devilspie
fi
config=$HOME/.devilspie/transparency_config.ds

transparent=85
opaque=100

if grep -Fq "$transparent" "$config"; then
  transparency=$opaque
else
  transparency=$transparent
fi

cat > $config << END
  (begin
    (spawn_async (str "compton-trans -w " (window_xid) " $transparency"))
  )
END

pkill -fx devilspie
devilspie &

