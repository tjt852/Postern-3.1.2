package com.tunnelworkshop.postern.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQuery;
import android.util.Log;

/**
 * Created by jiantao.tu on 2018/5/23.
 */
public class DatabaseOpenHelper extends SQLiteOpenHelper {

    final static String DB_NAME = "center_data.db";

    final static int VERSION_NUM = 1;

    private static DatabaseOpenHelper databaseOpenHelper;

    public static synchronized DatabaseOpenHelper getInstance(Context context) {
        if (databaseOpenHelper == null) {
            // 指定数据库名为student，需修改时在此修改；此处使用默认工厂；指定版本为1
            databaseOpenHelper = new DatabaseOpenHelper(context);
        }
        return databaseOpenHelper;
    }

    public synchronized SQLiteDatabase openDatabase() {
        return databaseOpenHelper.getWritableDatabase();
    }


    private DatabaseOpenHelper(Context context) {
        super(context, DB_NAME, new LeakLessCursorFactory(), VERSION_NUM);
    }

    public static class LeakLessCursorFactory implements SQLiteDatabase.CursorFactory {
        @Override
        public Cursor newCursor(SQLiteDatabase db, SQLiteCursorDriver masterQuery,
                                String editTable, SQLiteQuery query) {
            return new LeakLessCursor(db, masterQuery, editTable, query);
        }
    }


    public static class LeakLessCursor extends SQLiteCursor {
        static final String TAG = "LeakLessCursor";
        final SQLiteDatabase mDatabase;

        public LeakLessCursor(SQLiteDatabase database, SQLiteCursorDriver driver, String table, SQLiteQuery query) {
            super(driver, table, query);
            mDatabase = database;
        }

        @Override
        public void close() {
            Log.d(TAG, "Closing LeakLessCursor: " + mDatabase.getPath());
            super.close();
            mDatabase.close();
        }
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(DeviceTable.CREATE_SQL);
        db.execSQL(TaskTable.CREATE_SQL);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
}


