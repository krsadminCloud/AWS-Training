# Create top-level directories
$folders = @(
    "docs",
    "labs",
    "scripts",
    "notion",
    "video-curriculum",
    "challenges",
    "capstones",
    ".github",
    ".github\workflows",
    ".github\ISSUE_TEMPLATE"
)

foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
    }
}

# Create Day1–Day30 lab folders with placeholder README.md
for ($i = 1; $i -le 30; $i++) {
    $folderName = "labs/day{0:D2}" -f $i
    if (-not (Test-Path $folderName)) {
        New-Item -ItemType Directory -Path $folderName | Out-Null
    }
    $readmePath = "$folderName/README.md"
    if (-not (Test-Path $readmePath)) {
        "## Lab Day $i`n`nPlaceholder instructions." | Out-File $readmePath
    }
}

# Create placeholder README.md files in major folders
$readmeFolders = @(
    "docs",
    "scripts",
    "notion",
    "video-curriculum",
    "challenges",
    "capstones",
    ".github/ISSUE_TEMPLATE",
    ".github/workflows"
)

foreach ($folder in $readmeFolders) {
    $readme = "$folder/README.md"
    if (-not (Test-Path $readme)) {
        "## $folder`n`nPlaceholder." | Out-File $readme
    }
}

Write-Host "AWS-Training structure created successfully!"
