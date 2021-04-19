#!/usr/bin/env bash
# -*- mode: sh; coding: utf-8; -*-
# vim: set syntax=sh fileencoding=utf-8

location='westcentralus'
groupname='appDefinitionGroup'
name='mlc-offer'
displayname='My Learning Consultants - Moodle'
description='Managed Moodle Instance'
# Allowed values: CanNotDelete, None, ReadOnly
locklevel='None'
pkglocation='https://raw.githubusercontent.com/kiklop74/ms-azure-marketplace/main/app.zip'
# The Azure CLI inssists on presence of valid subscription
# TODO: add it
subscription='<put some value here>'

# Create resource group
az group create --name "${groupname}" --location "${location}" --subscription "${subscription}"

# Get Azure Active Directory group to manage the application
groupid=$(az ad group show --group 'appManagers' --query 'objectId' --output 'tsv')

# Get role
roleid=$(az role definition list --name 'Owner' --query '[].name' --output 'tsv')

# Create the definition for a managed application
az managedapp definition create \
   --name "${name}" \
   --location "${location}" \
   --resource-group "${groupname}" \
   --lock-level "${locklevel}" \
   --display-name "${displayname}" \
   --description "${description}" \
   --authorizations "${groupid}:${roleid}" \
   --package-file-uri "${pkglocation}"
