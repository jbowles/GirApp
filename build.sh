if [ ! -e "paket.lock" ]
then
    exec mono .paket/paket.exe install
fi

dotnet restore src/GirApp
dotnet build src/GirApp

dotnet restore tests/GirApp.Tests
dotnet build tests/GirApp.Tests
dotnet test tests/GirApp.Tests
