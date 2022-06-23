#!/bin/bash
set -e

testAlias+=(
	[raptoreumd:trusty]='raptoreumd'
)

imageTests+=(
	[raptoreumd]='
		rpcpassword
	'
)
