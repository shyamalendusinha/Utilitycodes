
# copied from https://stackoverflow.com/questions/1401904/painless-way-to-install-a-new-version-of-r

# old computer
packages <- installed.packages()[,"Package"]
save(packages, file="Rpackages")

# new computer
load("Rpackages")
for (p in setdiff(packages, installed.packages()[,"Package"]))
install.packages(p)
