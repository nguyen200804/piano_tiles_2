package org.apache.commons.io.input;

import com.facebook.ads.AudienceNetworkActivity;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.ByteOrderMark;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class XmlStreamReader extends Reader {
    private static final int BUFFER_SIZE = 4096;
    private static final String HTTP_EX_1 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL";
    private static final String HTTP_EX_2 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch";
    private static final String HTTP_EX_3 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME";
    private static final String RAW_EX_1 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch";
    private static final String RAW_EX_2 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM";
    private static final String US_ASCII = "US-ASCII";
    private static final String UTF_16 = "UTF-16";
    private static final String UTF_32 = "UTF-32";
    private final String defaultEncoding;
    private final String encoding;
    private final Reader reader;
    private static final ByteOrderMark[] BOMS = {ByteOrderMark.UTF_8, ByteOrderMark.UTF_16BE, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_32BE, ByteOrderMark.UTF_32LE};
    private static final String UTF_8 = "UTF-8";
    private static final String UTF_16BE = "UTF-16BE";
    private static final String UTF_16LE = "UTF-16LE";
    private static final String UTF_32BE = "UTF-32BE";
    private static final String UTF_32LE = "UTF-32LE";
    private static final String EBCDIC = "CP1047";
    private static final ByteOrderMark[] XML_GUESS_BYTES = {new ByteOrderMark(UTF_8, 60, 63, 120, 109), new ByteOrderMark(UTF_16BE, 0, 60, 0, 63), new ByteOrderMark(UTF_16LE, 60, 0, 63, 0), new ByteOrderMark(UTF_32BE, 0, 0, 0, 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109), new ByteOrderMark(UTF_32LE, 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109, 0, 0, 0), new ByteOrderMark(EBCDIC, 76, 111, 167, 148)};
    private static final Pattern CHARSET_PATTERN = Pattern.compile("charset=[\"']?([.[^; \"']]*)[\"']?");
    public static final Pattern ENCODING_PATTERN = Pattern.compile("<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:'.[^']*'))", 8);

    public String getDefaultEncoding() {
        return this.defaultEncoding;
    }

    public XmlStreamReader(File file) throws IOException {
        this(new FileInputStream(file));
    }

    public XmlStreamReader(InputStream is) throws IOException {
        this(is, true);
    }

    public XmlStreamReader(InputStream is, boolean lenient) throws IOException {
        this(is, lenient, (String) null);
    }

    public XmlStreamReader(InputStream is, boolean lenient, String defaultEncoding) throws IOException {
        this.defaultEncoding = defaultEncoding;
        BOMInputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(is, 4096), false, BOMS);
        BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        this.encoding = doRawStream(bOMInputStream, bOMInputStream2, lenient);
        this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
    }

    public XmlStreamReader(URL url) throws IOException {
        this(url.openConnection(), (String) null);
    }

    public XmlStreamReader(URLConnection conn, String defaultEncoding) throws IOException {
        this.defaultEncoding = defaultEncoding;
        String contentType = conn.getContentType();
        BOMInputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(conn.getInputStream(), 4096), false, BOMS);
        BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        if ((conn instanceof HttpURLConnection) || contentType != null) {
            this.encoding = doHttpStream(bOMInputStream, bOMInputStream2, contentType, true);
        } else {
            this.encoding = doRawStream(bOMInputStream, bOMInputStream2, true);
        }
        this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
    }

    public XmlStreamReader(InputStream is, String httpContentType) throws IOException {
        this(is, httpContentType, true);
    }

    public XmlStreamReader(InputStream is, String httpContentType, boolean lenient, String defaultEncoding) throws IOException {
        this.defaultEncoding = defaultEncoding;
        BOMInputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(is, 4096), false, BOMS);
        BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        this.encoding = doHttpStream(bOMInputStream, bOMInputStream2, httpContentType, lenient);
        this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
    }

    public XmlStreamReader(InputStream is, String httpContentType, boolean lenient) throws IOException {
        this(is, httpContentType, lenient, null);
    }

    public String getEncoding() {
        return this.encoding;
    }

    @Override // java.io.Reader
    public int read(char[] buf, int offset, int len) throws IOException {
        return this.reader.read(buf, offset, len);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
    }

    private String doRawStream(BOMInputStream bom, BOMInputStream pis, boolean lenient) throws IOException {
        String bOMCharsetName = bom.getBOMCharsetName();
        String bOMCharsetName2 = pis.getBOMCharsetName();
        try {
            return calculateRawEncoding(bOMCharsetName, bOMCharsetName2, getXmlProlog(pis, bOMCharsetName2));
        } catch (XmlStreamReaderException e) {
            if (lenient) {
                return doLenientDetection(null, e);
            }
            throw e;
        }
    }

    private String doHttpStream(BOMInputStream bom, BOMInputStream pis, String httpContentType, boolean lenient) throws IOException {
        String bOMCharsetName = bom.getBOMCharsetName();
        String bOMCharsetName2 = pis.getBOMCharsetName();
        try {
            return calculateHttpEncoding(httpContentType, bOMCharsetName, bOMCharsetName2, getXmlProlog(pis, bOMCharsetName2), lenient);
        } catch (XmlStreamReaderException e) {
            if (lenient) {
                return doLenientDetection(httpContentType, e);
            }
            throw e;
        }
    }

    private String doLenientDetection(String httpContentType, XmlStreamReaderException ex) throws IOException {
        if (httpContentType != null && httpContentType.startsWith(AudienceNetworkActivity.WEBVIEW_MIME_TYPE)) {
            try {
                return calculateHttpEncoding("text/xml" + httpContentType.substring(AudienceNetworkActivity.WEBVIEW_MIME_TYPE.length()), ex.getBomEncoding(), ex.getXmlGuessEncoding(), ex.getXmlEncoding(), true);
            } catch (XmlStreamReaderException e) {
                ex = e;
            }
        }
        String xmlEncoding = ex.getXmlEncoding();
        if (xmlEncoding == null) {
            xmlEncoding = ex.getContentTypeEncoding();
        }
        if (xmlEncoding == null) {
            return this.defaultEncoding == null ? UTF_8 : this.defaultEncoding;
        }
        return xmlEncoding;
    }

    String calculateRawEncoding(String bomEnc, String xmlGuessEnc, String xmlEnc) throws IOException {
        if (bomEnc == null) {
            if (xmlGuessEnc == null || xmlEnc == null) {
                return this.defaultEncoding == null ? UTF_8 : this.defaultEncoding;
            }
            return (xmlEnc.equals(UTF_16) && (xmlGuessEnc.equals(UTF_16BE) || xmlGuessEnc.equals(UTF_16LE))) ? xmlGuessEnc : xmlEnc;
        }
        if (bomEnc.equals(UTF_8)) {
            if (xmlGuessEnc != null && !xmlGuessEnc.equals(UTF_8)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, bomEnc, xmlGuessEnc, xmlEnc), bomEnc, xmlGuessEnc, xmlEnc);
            }
            if (xmlEnc != null && !xmlEnc.equals(UTF_8)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, bomEnc, xmlGuessEnc, xmlEnc), bomEnc, xmlGuessEnc, xmlEnc);
            }
            return bomEnc;
        }
        if (bomEnc.equals(UTF_16BE) || bomEnc.equals(UTF_16LE)) {
            if (xmlGuessEnc != null && !xmlGuessEnc.equals(bomEnc)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, bomEnc, xmlGuessEnc, xmlEnc), bomEnc, xmlGuessEnc, xmlEnc);
            }
            if (xmlEnc != null && !xmlEnc.equals(UTF_16) && !xmlEnc.equals(bomEnc)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, bomEnc, xmlGuessEnc, xmlEnc), bomEnc, xmlGuessEnc, xmlEnc);
            }
            return bomEnc;
        }
        if (bomEnc.equals(UTF_32BE) || bomEnc.equals(UTF_32LE)) {
            if (xmlGuessEnc != null && !xmlGuessEnc.equals(bomEnc)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, bomEnc, xmlGuessEnc, xmlEnc), bomEnc, xmlGuessEnc, xmlEnc);
            }
            if (xmlEnc != null && !xmlEnc.equals(UTF_32) && !xmlEnc.equals(bomEnc)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, bomEnc, xmlGuessEnc, xmlEnc), bomEnc, xmlGuessEnc, xmlEnc);
            }
            return bomEnc;
        }
        throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_2, bomEnc, xmlGuessEnc, xmlEnc), bomEnc, xmlGuessEnc, xmlEnc);
    }

    String calculateHttpEncoding(String httpContentType, String bomEnc, String xmlGuessEnc, String xmlEnc, boolean lenient) throws IOException {
        if (lenient && xmlEnc != null) {
            return xmlEnc;
        }
        String contentTypeMime = getContentTypeMime(httpContentType);
        String contentTypeEncoding = getContentTypeEncoding(httpContentType);
        boolean isAppXml = isAppXml(contentTypeMime);
        boolean isTextXml = isTextXml(contentTypeMime);
        if (!isAppXml && !isTextXml) {
            throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_3, contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc), contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc);
        }
        if (contentTypeEncoding == null) {
            if (isAppXml) {
                return calculateRawEncoding(bomEnc, xmlGuessEnc, xmlEnc);
            }
            return this.defaultEncoding == null ? US_ASCII : this.defaultEncoding;
        }
        if (contentTypeEncoding.equals(UTF_16BE) || contentTypeEncoding.equals(UTF_16LE)) {
            if (bomEnc != null) {
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_1, contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc), contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc);
            }
            return contentTypeEncoding;
        }
        if (contentTypeEncoding.equals(UTF_16)) {
            if (bomEnc == null || !bomEnc.startsWith(UTF_16)) {
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_2, contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc), contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc);
            }
            return bomEnc;
        }
        if (contentTypeEncoding.equals(UTF_32BE) || contentTypeEncoding.equals(UTF_32LE)) {
            if (bomEnc != null) {
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_1, contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc), contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc);
            }
            return contentTypeEncoding;
        }
        if (contentTypeEncoding.equals(UTF_32)) {
            if (bomEnc == null || !bomEnc.startsWith(UTF_32)) {
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_2, contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc), contentTypeMime, contentTypeEncoding, bomEnc, xmlGuessEnc, xmlEnc);
            }
            return bomEnc;
        }
        return contentTypeEncoding;
    }

    static String getContentTypeMime(String httpContentType) {
        if (httpContentType == null) {
            return null;
        }
        int indexOf = httpContentType.indexOf(";");
        if (indexOf >= 0) {
            httpContentType = httpContentType.substring(0, indexOf);
        }
        return httpContentType.trim();
    }

    static String getContentTypeEncoding(String httpContentType) {
        int indexOf;
        if (httpContentType == null || (indexOf = httpContentType.indexOf(";")) <= -1) {
            return null;
        }
        Matcher matcher = CHARSET_PATTERN.matcher(httpContentType.substring(indexOf + 1));
        String group = matcher.find() ? matcher.group(1) : null;
        if (group != null) {
            return group.toUpperCase(Locale.US);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        if (r4 != (-1)) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        throw new java.io.IOException("Unexpected end of XML stream");
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
    
        throw new java.io.IOException("XML prolog or ROOT element not found on first " + r7 + " bytes");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getXmlProlog(java.io.InputStream r11, java.lang.String r12) throws java.io.IOException {
        /*
            r0 = 0
            r10 = 1
            r8 = 0
            r6 = 4096(0x1000, float:5.74E-42)
            r3 = -1
            if (r12 == 0) goto L9f
            byte[] r9 = new byte[r6]
            r11.mark(r6)
            int r1 = r11.read(r9, r8, r6)
            r2 = r3
            r4 = r1
            r5 = r6
            r7 = r8
            r1 = r0
        L16:
            if (r4 == r3) goto L2e
            if (r2 != r3) goto L2e
            if (r7 >= r6) goto L2e
            int r7 = r7 + r4
            int r5 = r5 - r4
            int r4 = r11.read(r9, r7, r5)
            java.lang.String r1 = new java.lang.String
            r1.<init>(r9, r8, r7, r12)
            r2 = 62
            int r2 = r1.indexOf(r2)
            goto L16
        L2e:
            if (r2 != r3) goto L59
            if (r4 != r3) goto L3a
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "Unexpected end of XML stream"
            r0.<init>(r1)
            throw r0
        L3a:
            java.io.IOException r0 = new java.io.IOException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "XML prolog or ROOT element not found on first "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r7)
            java.lang.String r2 = " bytes"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L59:
            if (r7 <= 0) goto L9f
            r11.reset()
            java.io.BufferedReader r3 = new java.io.BufferedReader
            java.io.StringReader r4 = new java.io.StringReader
            int r2 = r2 + 1
            java.lang.String r1 = r1.substring(r8, r2)
            r4.<init>(r1)
            r3.<init>(r4)
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            java.lang.String r1 = r3.readLine()
        L77:
            if (r1 == 0) goto L81
            r2.append(r1)
            java.lang.String r1 = r3.readLine()
            goto L77
        L81:
            java.util.regex.Pattern r1 = org.apache.commons.io.input.XmlStreamReader.ENCODING_PATTERN
            java.util.regex.Matcher r1 = r1.matcher(r2)
            boolean r2 = r1.find()
            if (r2 == 0) goto L9f
            java.lang.String r0 = r1.group(r10)
            java.lang.String r0 = r0.toUpperCase()
            int r1 = r0.length()
            int r1 = r1 + (-1)
            java.lang.String r0 = r0.substring(r10, r1)
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.input.XmlStreamReader.getXmlProlog(java.io.InputStream, java.lang.String):java.lang.String");
    }

    static boolean isAppXml(String mime) {
        return mime != null && (mime.equals("application/xml") || mime.equals("application/xml-dtd") || mime.equals("application/xml-external-parsed-entity") || (mime.startsWith("application/") && mime.endsWith("+xml")));
    }

    static boolean isTextXml(String mime) {
        return mime != null && (mime.equals("text/xml") || mime.equals("text/xml-external-parsed-entity") || (mime.startsWith("text/") && mime.endsWith("+xml")));
    }
}
