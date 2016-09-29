# Packages to pre-install in the image
packagelist = ["PyCall",
               "SymPy",
               "Roots",
               "Polynomials",
               "HDF5",
               "MAT",
               "Ipopt"];

Pkg.update()
for pkg in packagelist
    Pkg.add(pkg)
    eval( parse( "using $(pkg)" ) )
end
Pkg.update()
