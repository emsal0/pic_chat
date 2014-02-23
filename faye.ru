require 'faye'

fsv=Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)
run fsv
