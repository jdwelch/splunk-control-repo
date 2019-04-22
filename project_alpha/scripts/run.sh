#!/bin/bash
bolt --boltdir ~/src/control-repo plan run project::plan_one --nodes 'rzf6t0jfztmu85m.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_two --nodes 'k5ec1dta314628s.delivery.puppetlabs.net, ijqxnqg7ynosucd.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_three --nodes 'rzf6t0jfztmu85m.delivery.puppetlabs.net, k5ec1dta314628s.delivery.puppetlabs.net, ijqxnqg7ynosucd.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_one --nodes 'k5ec1dta314628s.delivery.puppetlabs.net, ijqxnqg7ynosucd.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_two --nodes 'k5ec1dta314628s.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_three --nodes 'rzf6t0jfztmu85m.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_one --nodes 'rzf6t0jfztmu85m.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_two --nodes 'rzf6t0jfztmu85m.delivery.puppetlabs.net, k5ec1dta314628s.delivery.puppetlabs.net, ijqxnqg7ynosucd.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::plan_three --nodes 'k5ec1dta314628s.delivery.puppetlabs.net, ijqxnqg7ynosucd.delivery.puppetlabs.net'
bolt --boltdir ~/src/control-repo plan run project::simple_plan --nodes localhost