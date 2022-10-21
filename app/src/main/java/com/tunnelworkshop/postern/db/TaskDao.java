package com.tunnelworkshop.postern.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;


public class TaskDao {

    private static final String TAG = "TaskDao";

    private final DatabaseOpenHelper databaseHelper;
    private SQLiteDatabase sqLiteDatabase;
    private static TaskDao taskDao;

    private TaskDao(Context context) {
        databaseHelper = DatabaseOpenHelper.getInstance(context);
    }

    public synchronized static TaskDao getInstance(Context context) {
        if (taskDao == null) {
            taskDao = new TaskDao(context);
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
    public synchronized void replace(final ContentValues... cvs) {
        SQLiteDatabase db = openDatabase();
        if (db == null || cvs == null || cvs.length == 0) {
            return;
        }
        try {
            db.beginTransaction();
            for (ContentValues cv : cvs) {
                db.replace(TaskTable.TABLE_NAME, null, cv);
            }
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
            closeDatabase();
        }

    }


    /**
     * 向数据库中插入更新数据
     */
    public synchronized void replace(final TaskPo... devices) {
        if (devices == null || devices.length == 0) {
            return;
        }
        ContentValues[] cvs = new ContentValues[devices.length];
        for (int i = 0; i < devices.length; i++) {
            cvs[i] = TaskPo.getCVForTask(devices[i]);
        }
        replace(cvs);
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


    public synchronized Cursor getCursorById(String id) {
        SQLiteDatabase db = openDatabase();
        if (db == null) {
            return null;
        }
        StringBuilder sql = new StringBuilder("select * from ")
                .append(TaskTable.TABLE_NAME)
                .append(" as a inner join ")
                .append(DeviceTable.TABLE_NAME)
                .append(" as b on a.")
                .append(TaskTable.DEVICE_ID)
                .append(" = b.")
                .append(DeviceTable.ID);

        String[] params = null;
        if (id != null) {
            sql.append(" where a.")
                    .append(TaskTable.ID)
                    .append(" = ? ");
            params = new String[]{id};
        }

        sql.append(" LIMIT 1");
        Cursor cursor = db.rawQuery(sql.toString(), params);
        if (cursor != null && cursor.moveToFirst())
            return cursor;
        return null;
    }

    public synchronized TaskPo getTaskById(String id) {
        Cursor cursor = null;
        try {
            cursor = getCursorById(id);
            if (cursor != null)
                return TaskPo.getTask(cursor);
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
            db.delete(TaskTable.TABLE_NAME, TaskTable.ID + " = ?", new String[]{id.toString()});
        } finally {
            closeDatabase();
        }
    }


}
