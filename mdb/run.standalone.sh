# replace <HOMEDIR> with home directory name

#!/bin/bash

mongod --port 35017 --config /Users/<HOMEDIR>/repos/bash-scripts/mdb/config-files/standalone.conf

# To run the compiled 'mongod' in /Users/<HOMEDIR>/mongo:
# /Users/<HOMEDIR>/mongo/mongod --port 35017 --config /Users/<HOMEDIR>/repos/bash-scripts/mdb/config-files/standalone.conf
