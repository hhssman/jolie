/***************************************************************************
 *   Copyright (C) 2009 by                                                 *
 *   Fabrizio Montesi <famontesi@gmail.com>                                *
 *   Mauro Sgarzi <sgarzi.mauro@gmail.com>                                 *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU Library General Public License as       *
 *   published by the Free Software Foundation; either version 2 of the    *
 *   License, or (at your option) any later version.                       *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU Library General Public     *
 *   License along with this program; if not, write to the                 *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 *                                                                         *
 *   For details about the authors of this software, see the AUTHORS file. *
 ***************************************************************************/

include "../AbstractTestUnit.iol"
include "metajolie.iol"
include "time.iol"

define doTest
{
    sleep@Time( 1000 )()

	scope (parseError) {
		install (
			ParserException => nullProcess)

		install (SemanticException => nullProcess)
		// check assignment
		getMetaData@MetaJolie( {filename = "./primitives/private/constant-assignment.ol"})( metadata )
		throw (TestFailed,"Assignment to constant variable not detected")

		//check deep copy assignment
		getMetaData@MetaJolie( {filename = "./primitives/private/constant-deep-copy.ol"})( metadata )
		throw (TestFailed,"Deep copy assignment to constant variable not detected")

		//check reference assignment
		getMetaData@MetaJolie( {filename = "./primitives/private/constant-reference-to.ol"})( metadata )
		throw (TestFailed,"Reference assignment to constant variable not detected")
	}
}

