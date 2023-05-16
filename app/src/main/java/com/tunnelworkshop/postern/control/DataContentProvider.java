package com.tunnelworkshop.postern.control;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.tunnelworkshop.postern.db.DeviceDao;
import com.tunnelworkshop.postern.db.TaskDao;

public class DataContentProvider extends ContentProvider {

    //这里的AUTHORITY就是我们在AndroidManifest.xml中配置的authorities
    private static final String AUTHORITY = "com.control.data.provider";

    //匹配设备信息成功后的匹配码
    private static final int MATCH_DEVICE_CODE = 100;

    //匹配任务信息成功后的匹配码
    private static final int MATCH_TASK_CODE = 101;


    private static UriMatcher uriMatcher;

    private DeviceDao deviceDao;

    private TaskDao taskDao;


    //数据改变后指定通知的Uri
    private static final Uri NOTIFY_URI = Uri.parse("content://" + AUTHORITY + "/device");

    private static final Uri NOTIFY_URI2 = Uri.parse("content://" + AUTHORITY + "/task");

    static {
        //匹配不成功返回NO_MATCH(-1)
        uriMatcher = new UriMatcher(UriMatcher.NO_MATCH);

        //添加我们需要匹配的uri
        uriMatcher.addURI(AUTHORITY, "device", MATCH_DEVICE_CODE);
        uriMatcher.addURI(AUTHORITY, "task", MATCH_TASK_CODE);

    }

    @Override
    public boolean onCreate() {
        taskDao = TaskDao.getInstance(getContext());
        deviceDao = DeviceDao.getInstance(getContext());
        return true;
    }


    @Nullable
    @Override
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable String sortOrder) {
        int match = uriMatcher.match(uri);
        Log.i("tjt getCursorById preload", "-1");
        if (match == MATCH_TASK_CODE) {
            Log.i("tjt getCursorById preload", "0");

            return taskDao.getCursorById(null);
        }
        return null;
    }

    @Nullable
    @Override
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Nullable
    @Override
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues values) {
        return null;
    }

    @Override
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues values, @Nullable String selection, @Nullable String[] selectionArgs) {
        return 0;
    }

    private void notifyChange() {
        getContext().getContentResolver().notifyChange(NOTIFY_URI, null);
    }
}
