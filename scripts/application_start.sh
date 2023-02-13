#!/bin/bash

#Changing the permission mode on workspace directory
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into our working directory where we have all our github files
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #load nvm
[ -s "$NVM_DIR/bash_complition" ] && \. "$NVM_DIR/bash_complition" #load nvm bash_complition (node is in path)

#install node modules
npm install

#start our node app in the background
node app.js > app.out.log 2> app.err.log </dev/null & 
