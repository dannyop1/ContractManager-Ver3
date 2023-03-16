/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abc.contractmanager.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.abc.contractmanager.utils.DBUtils;

/**
 *
 * @author mical
 */
public class RoomDAO {
    public static ArrayList<Integer> getRoomID(int OID) {
        ArrayList<Integer> result = new ArrayList<>();
        Connection cn = null;
        int type = 0;
        try {
            cn = DBUtils.getConnection();
            if (cn != null) {
                String sql = "SELECT [RoID],[UID],[status]\n"
                        + "FROM [dbo].[Room]\n"
                        + "where [OID] = ? and status = 0";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, OID);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        result.add(rs.getInt(1));
                    }
                }
            }
        } catch (Exception e) {
            e.getCause();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                }
            }
        }
        return result;
    }

    public static void updateRoomIn(int userID, int roomID) {
        Connection cn = null;
        int type = 0;
        try {
            cn = DBUtils.getConnection();
            if (cn != null) {
                String sql = "update [dbo].[Room]\n"
                        + "set [UID] = ?, [status]= 1\n"
                        + "where [RoID] = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, userID);
                pst.setInt(2, roomID);
                pst.executeUpdate();
                System.out.println("hi");
            }
        } catch (Exception e) {
            e.getCause();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                }
            }
        }
    }

    public static void updateRoomOut(int roomID) {
        Connection cn = null;
        int type = 0;
        try {
            cn = DBUtils.getConnection();
            if (cn != null) {
                String sql = "update [dbo].[Room]\n"
                        + "set [UID] = NULL, [status]= 0\n"
                        + "where [RoID] = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, roomID);
                pst.executeUpdate();
            }
        } catch (Exception e) {
            e.getCause();
        } finally {
            if (cn != null) {
                try {
                    cn.close();
                } catch (Exception e) {
                }
            }
        }
    }
    
    public static void main(String[] args) {
        System.out.println(getRoomID(1).size());
        for (Integer i : getRoomID(1)) {
            System.out.println(i);
        }
    }
}
