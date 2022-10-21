package com.tunnelworkshop.postern.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;


import java.util.ArrayList;
import java.util.List;


public class DeviceDao {

    private static final String TAG = "DeviceDao";

    private final DatabaseOpenHelper databaseHelper;
    private SQLiteDatabase sqLiteDatabase;
    private static DeviceDao taskDao;

    private DeviceDao(Context context) {
        databaseHelper = DatabaseOpenHelper.getInstance(context);
    }

    public synchronized static DeviceDao getInstance(Context context) {
        if (taskDao == null) {
            taskDao = new DeviceDao(context);
        }
        return taskDao;
    }

    private synchronized SQLiteDatabase openDatabase() {
        closeDatabase();
        sqLiteDatabase = databaseHelper.getWritableDatabase();
        return sqLiteDatabase;
    }


    private synchronized void closeDatabase() {
        if (sqLiteDatabase != null && sqLiteDatabase.isOpen()) {
            sqLiteDatabase.close();
        }
    }

    /**
     * 向数据库中插入更新数据
     */
    public synchronized Long[] replace(final ContentValues... cvs) {
        SQLiteDatabase db = openDatabase();
        if (db == null || cvs == null || cvs.length == 0) {
            return new Long[0];
        }
        Long[] results = new Long[cvs.length];
        try {
            db.beginTransaction();
            int i = 0;
            for (ContentValues cv : cvs) {
                long result = db.replace(DeviceTable.TABLE_NAME, null, cv);
                results[i++] = result;
            }
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
            closeDatabase();
        }
        return results;

    }


    /**
     * 向数据库中插入更新数据
     */
    public synchronized Long[] replace(final DevicePo... devices) {
        if (devices == null || devices.length == 0) {
            return new Long[0];
        }
        ContentValues[] cvs = new ContentValues[devices.length];
        for (int i = 0; i < devices.length; i++) {
            cvs[i] = DevicePo.getCVForDevice(devices[i]);
        }
        return replace(cvs);
    }

    public synchronized List<DevicePo> queryAll() {
        List<DevicePo> deviceList = new ArrayList<>();
        SQLiteDatabase db = openDatabase();
        if (db == null) {
            return deviceList;
        }
        StringBuilder sql = new StringBuilder("select * from ")
                .append(DeviceTable.TABLE_NAME);
        Cursor cursor = null;
        try {
            cursor = db.rawQuery(sql.toString(), null);
            if (cursor == null) return deviceList;
            while (cursor.moveToNext()) {
                DevicePo device = DevicePo.getDevice(cursor);
                deviceList.add(device);
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            closeDatabase();
        }
        return deviceList;
    }


    public synchronized Cursor getCursorById(Integer id) {
        SQLiteDatabase db = openDatabase();
        if (db == null) {
            return null;
        }
        StringBuilder sql = new StringBuilder("select * from ")
                .append(DeviceTable.TABLE_NAME)
                .append(" where ")
                .append(DeviceTable.ID)
                .append(" = ? LIMIT 1");
        Cursor cursor = db.rawQuery(sql.toString(), new String[]{id.toString()});
        if (cursor != null && cursor.moveToFirst())
            return cursor;
        return null;
    }

    public synchronized DevicePo getDeviceById(Integer id) {
        Cursor cursor = null;
        try {
            cursor = getCursorById(id);
            if (cursor != null)
                return DevicePo.getDevice(cursor);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            closeDatabase();
        }
        return null;
    }


    public synchronized void deleteById(final Integer id) {
        SQLiteDatabase db = openDatabase();
        if (db == null) {
            return;
        }
        try {
            db.delete(DeviceTable.TABLE_NAME, DeviceTable.ID + " = ?", new String[]{id.toString()});
        } finally {
            closeDatabase();
        }
    }


}
