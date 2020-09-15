package com.example.qr_code

import android.os.Bundle

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)

        Toast.makeText(applicationContext, "Codemobiles", Toast.LENGTH_LONG).show()
    }
}



