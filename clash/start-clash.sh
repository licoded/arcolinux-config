#!/bin/bash
# save this file to {HOME}/.config/clash/start-clash.sh

CLASH_URL="https://sub.nerocats.cn/sub?target=clash&url=https%3A%2F%2Fsub.paasmi.com%2Fsubscribe%2F95771%2FNHaooOEF761u&insert=false&config=https%3A%2F%2Fraw.githubusercontent.com%2FACL4SSR%2FACL4SSR%2Fmaster%2FClash%2Fconfig%2FACL4SSR_Online.ini"
HOME_PATH="/home/lic"

# save pid file
echo $$ > $HOME_PATH/.config/clash/clash.pid

# start clash
systemctl restart clash@lic.service

diff $HOME_PATH/.config/clash/config.yaml <(curl -s ${CLASH_URL})

if [ "?" == 0 ]
then
  echo 'Nothing to update!'
else
  echo 'Begin to update...'
  # update config
  curl -L -o $HOME_PATH/.config/clash/config.yaml ${CLASH_URL}
  echo 'Finsh update!'
  # restart clash
  systemctl restart clash@lic.service
fi
