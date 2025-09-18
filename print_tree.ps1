# Lista de pastas a excluir
$exclude = "node_modules","dist",".astro"

# Função recursiva para mostrar árvore
function Show-Tree ($path, $prefix="") {
    Get-ChildItem $path -Directory | Where-Object { $exclude -notcontains $_.Name } | ForEach-Object {
        Write-Output "$prefix├─ $_.Name"
        Show-Tree $_.FullName ("$prefix│  ")
    }
}

# Caminho do projeto
$projectPath = "C:\Users\peter\portfolio"

# Gerar árvore e salvar em ficheiro
Show-Tree $projectPath | Out-File "$projectPath\tree.txt"
