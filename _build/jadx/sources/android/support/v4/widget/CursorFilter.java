package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class CursorFilter extends Filter {
    CursorFilterClient mClient;

    interface CursorFilterClient {
        void changeCursor(Cursor cursor);

        CharSequence convertToString(Cursor cursor);

        Cursor getCursor();

        Cursor runQueryOnBackgroundThread(CharSequence charSequence);
    }

    CursorFilter(CursorFilterClient client) {
        this.mClient = client;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object resultValue) {
        return this.mClient.convertToString((Cursor) resultValue);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence constraint) {
        Cursor runQueryOnBackgroundThread = this.mClient.runQueryOnBackgroundThread(constraint);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (runQueryOnBackgroundThread != null) {
            filterResults.count = runQueryOnBackgroundThread.getCount();
            filterResults.values = runQueryOnBackgroundThread;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence constraint, Filter.FilterResults results) {
        Cursor cursor = this.mClient.getCursor();
        if (results.values != null && results.values != cursor) {
            this.mClient.changeCursor((Cursor) results.values);
        }
    }
}
