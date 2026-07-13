package com.myapp

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule

class AppConfigModule(reactContext: ReactApplicationContext) :
    ReactContextBaseJavaModule(reactContext) {

  override fun getName(): String = "AppConfig"

  override fun getConstants(): MutableMap<String, Any> =
      mutableMapOf(
          "environment" to BuildConfig.ENVIRONMENT,
          "apiBaseUrl" to BuildConfig.API_BASE_URL,
          "applicationId" to BuildConfig.APPLICATION_ID,
      )
}
