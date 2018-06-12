##=====================================================================
## WebSiteGenerator: a HTML websites generator. 
## Copyright 2018 Quentin Quadrat <lecrapouille@gmail.com>
##
## This file is part of WebSiteGenerator.
##
## WebSiteGenerator is free software: you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation, either version 3 of the
## License, or (at your option) any later version.
##
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
##=====================================================================

include websites.list

TOP_RULES=all list clean
.PHONY: $(TOP_RULES) $(WEBSITES)
$(TOP_RULES): $(WEBSITES)
$(WEBSITES):
	@cd WebSiteGenerator && $(MAKE) $(MAKECMDGOALS) WEBSITES=$(WEBSITES)
