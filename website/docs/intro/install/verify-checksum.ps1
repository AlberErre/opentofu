# Copyright (c) The OpenTofu Authors
# SPDX-License-Identifier: MPL-2.0
# Copyright (c) 2023 HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

$zipFile="tofu_YOURVERSION_REPLACEME.zip"
$checksum = $(Get-FileHash -Algorithm SHA256 $zipFile).Hash
$expectedChecksum = $((Get-Content "tofu_YOURVERSION_REPLACEME_SHA256SUMS" | Select-String -Pattern $zipFile) -split '\s+')[0]
if ($realHash -ne $expectedHash) {
    Write-Error "Checksum mismatch"
}