import { NativeModules } from 'react-native';

type NativeAppConfig = {
  environment?: string;
  apiBaseUrl?: string;
  applicationId?: string;
};

const nativeConfig = (NativeModules.AppConfig ?? {}) as NativeAppConfig;

export const appConfig = {
  environment: nativeConfig.environment ?? 'prod',
  apiBaseUrl: nativeConfig.apiBaseUrl ?? 'https://api.example.com',
  applicationId: nativeConfig.applicationId ?? 'com.cicd.app',
};

export type AppConfig = typeof appConfig;
