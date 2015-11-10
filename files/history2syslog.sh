# Write everything executed from bash login to syslog/logstash
function history2syslog
{
  declare command
  command=$(fc -ln -0)
  /usr/bin/logger -p local1.notice -t bash -i -- $USER : $command
}
trap history2syslog DEBUG
