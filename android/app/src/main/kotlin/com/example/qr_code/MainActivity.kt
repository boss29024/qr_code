package com.example.qr_code

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.core.content.FileProvider

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import java.io.File


class MainActivity: FlutterActivity() {
    private val CHANNEL = "cm.share/share";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            methodCall, result ->
            if(methodCall.method == "shareFile"){
                shareFile(methodCall.arguments as String);
            }
        }
    }

    // add
    private fun shareFile(path: String) {
        val imageFile = File(cacheDir, path)
        val contentUri = FileProvider.getUriForFile(this, "cm.qrcode.share", imageFile)
        // cm.qrcode.share (ref. AndroidManifest.xml)

        Intent(Intent.ACTION_SEND).let {
            it.type = "image/png"
            it.putExtra(Intent.EXTRA_STREAM, contentUri)
            startActivity(Intent.createChooser(it, "Share QRCode"))

            Toast.makeText(applicationContext, "Codemobiles", Toast.LENGTH_LONG).show()
        }
    }
}



