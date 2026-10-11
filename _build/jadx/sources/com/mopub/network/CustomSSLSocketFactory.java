package com.mopub.network;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private SSLSocketFactory f4717a;

    private CustomSSLSocketFactory() {
    }

    @NonNull
    public static CustomSSLSocketFactory getDefault(int handshakeTimeoutMillis) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f4717a = SSLCertificateSocketFactory.getDefault(handshakeTimeoutMillis, null);
        return customSSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        if (this.f4717a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4717a.createSocket();
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String host, int i) throws IOException, UnknownHostException {
        if (this.f4717a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4717a.createSocket(host, i);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String host, int port, InetAddress localhost, int localPort) throws IOException, UnknownHostException {
        if (this.f4717a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4717a.createSocket(host, port, localhost, localPort);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress address, int port) throws IOException {
        if (this.f4717a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4717a.createSocket(address, port);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress address, int port, InetAddress localhost, int localPort) throws IOException {
        if (this.f4717a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4717a.createSocket(address, port, localhost, localPort);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f4717a == null ? new String[0] : this.f4717a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f4717a == null ? new String[0] : this.f4717a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socketParam, String host, int port, boolean autoClose) throws IOException {
        if (this.f4717a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (autoClose && socketParam != null) {
                socketParam.close();
            }
            Socket createSocket = this.f4717a.createSocket(InetAddressUtils.getInetAddressByName(host), port);
            a(createSocket);
            a(createSocket, host);
            return createSocket;
        }
        Socket createSocket2 = this.f4717a.createSocket(socketParam, host, port, autoClose);
        a(createSocket2);
        return createSocket2;
    }

    private void a(@NonNull Socket socket, @Nullable String str) throws IOException {
        Preconditions.checkNotNull(socket);
        if (this.f4717a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            a((SSLCertificateSocketFactory) this.f4717a, sSLSocket, str);
            a(sSLSocket, str);
        }
    }

    @VisibleForTesting
    static void a(@NonNull SSLCertificateSocketFactory sSLCertificateSocketFactory, @NonNull SSLSocket sSLSocket, @Nullable String str) {
        Preconditions.checkNotNull(sSLCertificateSocketFactory);
        Preconditions.checkNotNull(sSLSocket);
        if (Build.VERSION.SDK_INT >= 17) {
            sSLCertificateSocketFactory.setHostname(sSLSocket, str);
            return;
        }
        try {
            new Reflection.MethodBuilder(sSLSocket, "setHostname").addParam(String.class, str).execute();
        } catch (Exception e) {
            MoPubLog.d("Unable to call setHostname() on the socket");
        }
    }

    @VisibleForTesting
    static void a(@NonNull SSLSocket sSLSocket, @Nullable String str) throws IOException {
        Preconditions.checkNotNull(sSLSocket);
        sSLSocket.startHandshake();
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
            throw new SSLHandshakeException("Server Name Identification failed.");
        }
    }

    private void a(@Nullable Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }
}
