
package com.example.ecommerceapp;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

import com.yandex.mapkit.MapKitFactory;

public class MainActivity extends FlutterActivity {
  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
  
    MapKitFactory.setApiKey("199bc754-ad79-496b-b86f-014b270cb6bf");
    super.configureFlutterEngine(flutterEngine);
  }
}