try {
    $gitDescribe = & git --no-pager describe --always --dirty
    if ($LASTEXITCODE -eq 0) {
        Write-Output "STABLE_BUILD_GIT_DESCRIBE $gitDescribe"
    } else {
        Write-Output "STABLE_BUILD_GIT_DESCRIBE unknown"
    }
} catch {
    Write-Output "STABLE_BUILD_GIT_DESCRIBE unknown"
}