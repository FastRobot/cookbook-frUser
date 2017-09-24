frUser Cookbook
===============

Just a thin wrapper around users.

Stands up the basic FR users on a box, uses the "users" cookbook and a users databag

Requirements
------------
users - http://github.com/opscode-cookbooks/users

Attributes
----------
TODO: should let me set a "groups" attribute that specifies which groups get managed via the data bag search

Usage
-----
#### frUser::default

Just include `frUser` in your node's `run_list`:

consult the users cookbook for the databag format.
