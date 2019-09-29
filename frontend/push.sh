#! /bin/bash
proj_dir="extend"
server="127.0.0.1"
# npm run build
ssh root@${server} "[[ ! -d /var/www/${proj_dir}/ ]] && mkdir -p  /var/www/${proj_dir}/"
ssh root@${server} "[[  -d /var/www/${proj_dir}/ ]] && rm -rf /var/www/${proj_dir}/*"
scp -r dist/* root@${server}:/var/www/${proj_dir}/