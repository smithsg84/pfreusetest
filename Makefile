##
## Copyright:	(c) 1997-2008 Lawrence Livermore National Security, LLC
## Revision:	$LastChangedRevision: 2219 $
## Modified:	$LastChangedDate: 2008-06-12 13:14:48 -0700 (Thu, 12 Jun 2008) $
##
## Description:	makefile for the parflow library and executable
##

include $(PARFLOW_DIR)/config/Makefile.config

default: check

check:
	./run.sh

clean:
	@rm -f *.pfb*
	@rm -f *.silo*
	@rm -f *.pfsb*
	@rm -f *.log
	@rm -f .hostfile
	@rm -f .amps.*
	@rm -f *.out.pftcl
	@rm -f *.pfidb
	@rm -f *.out.txt
	@rm -fr default_richards.out 
	@rm -fr *.out.wells
	@rm -fr indicator_field.out
	@rm -fr water_balance.out
	@rm -fr default_overland.out
	@rm -fr test.log.*
	@rm -fr richards_hydrostatic_equalibrium.out
	@rm -fr core.*
	@rm -fr samrai_grid.tmp.tcl
	@rm -f samrai_grid2D.tmp.tcl
	@rm -fr LW_var_dz_spinup.out
	@rm -fr default_single.out
	@rm -f *.nc
	@rm -f clm.rst.00000.0

