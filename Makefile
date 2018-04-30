K = 4

compile = ifort src/* -o $(1) -std08 -warn all -module . -implicitnone -fpp -DK=$(K) $(2) -g


make:
	$(call compile,main,,)



