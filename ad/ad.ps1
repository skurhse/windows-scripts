#!/usr/bin/env pwsh

# Gets active directory information

# Requires:
#   Windows Capability Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
#   Install-Module CredentialManager

(Get-StoredCredential -AsCredentialObject) | Where-Object Type -eq DomainPassword
