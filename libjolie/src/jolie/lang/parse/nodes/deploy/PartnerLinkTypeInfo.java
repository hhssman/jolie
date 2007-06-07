/***************************************************************************
 *   Copyright (C) by Fabrizio Montesi                                     *
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

package jolie.lang.parse.nodes.deploy;

import jolie.lang.parse.DeployVisitor;


public class PartnerLinkTypeInfo implements DeploySyntaxNode
{
	private String id, inputPortType, outputPortType;
	
	public PartnerLinkTypeInfo( String id, String ipt, String opt )
	{
		this.id = id;
		this.inputPortType = ipt;
		this.outputPortType = opt;
	}

	public void accept( DeployVisitor visitor )
	{
		visitor.visit( this );
	}
	
	public String id()
	{
		return id;
	}
	
	public String inputPortType()
	{
		return inputPortType;
	}
	
	public String outputPortType()
	{
		return outputPortType;
	}
}
