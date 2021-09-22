param($network, $server)
foreach ($i in 0..255) {
  $hosts="$network.$i"
  foreach ($temp in $hosts) { 
    Resolve-DnsName -DnsOnly $temp -Server $server -ErrorAction Ignore
  }
}