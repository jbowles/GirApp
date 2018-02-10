IF NOT EXIST paket.lock (
    START /WAIT .paket/paket.exe install
)
dotnet restore src/GirApp
dotnet build src/GirApp

dotnet restore tests/GirApp.Tests
dotnet build tests/GirApp.Tests
dotnet test tests/GirApp.Tests
