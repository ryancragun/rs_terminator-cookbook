# rs_terminator Cookbook

## Description

This cookbook is available at [https://github.com/ryancragun/rs_terminator-cookbook](https://github.com/ryancragun/rs_terminator-cookbook).

This cookbook provides base recipes to configure RightScale instances with 
proper safety tags as well as base recipes to configure a cron daemon that will 
run the Terminator.

## Requirements

A RightScale enabled Server launched from RightScale.

## Known issues

Currently only the "rs_terminator::setup_client" recipe is supported.  
"rs_terminator::setup_server" and the 'terminator' LWRP will be added in a
later version.

## Usage

For a client Server needing to apply tags to prevent termination, add the 
"rs_terminator::setup_client" recipe to the runlist and provide a valid 
node[:rs_terminator][:client][:safe_tag] attribute that will applied.

For Server installation that will run the Terminator with a single configuration, 
add the "rs_terminator::setup_server" recipe to the runlist and provide valid 
configuration attributes.

To configure multiple terminator configurations use the 'terminator' LWRP.

## Attributes

node[:rs_terminator][:client][:safe_tag]

# Recipes

"rs_terminator::default"
"rs_terminator::setup_client"
"rs_terminator::setup_server"

# Author

Author:: Ryan_Cragun (<ryan@rightscale.com>)
