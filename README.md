# ias-action
Github action that triggers the Impact Analysis Service

## A detailed description of what the action does
This action allows triggering of the Impact Analysis Service on a PR. The impact analysis service can analyze the changes you did in your puppet code and show you their impact. 

# Required input and output arguments
The action will use the current branch and the parent branch to determine the Puppet environment names

## Secrets the action uses
Users must provide a `clientID` and a `token` as secrets
