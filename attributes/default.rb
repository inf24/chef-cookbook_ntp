##
# Maximilian Sparenberg | Max.Sparenberg@icloud.com | inf24
##

default['ntp']['timeservers'] = %w{
  0.de.pool.ntp.org
	1.de.pool.ntp.org
	2.de.pool.ntp.org
	3.de.pool.ntp.org
}

default['ntp']['package'] = 'ntp'
default['ntp']['conf']['file'] = '/etc/ntp.conf'

case node['platform']
when 'centos'
  if node['platform_version'].to_f >= 6.5
    default['ntp']['service'] = 'ntpd'
    default['ntp']['conf']['dir'] = '/etc/ntp/'
  end
when 'suse'
  if node['platform_version'].to_f >= 11.0
    default['ntp']['service'] = 'ntp'
    default['ntp']['conf']['dir'] = '/etc/'
  end
end
