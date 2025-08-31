#!/usr/bin/env pwsh

try {
    $gitDescribe = & git --no-pager describe --always --dirty 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Output "STABLE_BUILD_GIT_DESCRIBE $gitDescribe"
    } else {
        Write-Output "STABLE_BUILD_GIT_DESCRIBE unknown"
    }
} catch {
    Write-Output "STABLE_BUILD_GIT_DESCRIBE unknown"
}