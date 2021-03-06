/*
 * Copyright (C) July 2014 Rafael Aznar
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
package net.daw.helper;

public class ConnectionClassHelper {

    public static String getDatabaseName() {
        return "prolibrery";
    }

    public static String getDatabaseLogin() {
        return "root";
    }

    public static String getDatabasePassword() {
        return "bitnami";
    }

    public static String getDatabasePort() {
        return "3306";
    }

    public static String getDatabaseHost() {
        return "127.0.0.1";
    }

    public static String getConnectionChain() {
        return "jdbc:mysql://" + ConnectionClassHelper.getDatabaseHost() + ":" + ConnectionClassHelper.getDatabasePort() + "/" + ConnectionClassHelper.getDatabaseName();
    }
}
