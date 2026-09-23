# Bài tập buổi 2 - Flutter

Mã giao diện nằm trong `lib/main.dart`, dựng theo ảnh `../bt-buoi2-1.png` và bản Expo ở `../expo-buoi-2`.

Flutter SDK 3.47.5 đã được cài tại `D:\flutter`. Dự án đã có thư mục `android/` và `web/`, nên không cần chạy lại `flutter create`.

Nếu PowerShell báo không nhận lệnh `flutter`, cập nhật PATH ngay trong terminal đó:

```powershell
$env:Path += ';D:\flutter\bin'
```

Sau đó chạy:

```powershell
cd "D:\cmc\Lập trình Mobile\BT_buổi_2\flutter_buoi_2"
flutter --version
flutter run -d chrome
```

PATH đã được thêm cho tài khoản Windows. Để các terminal mở sau này tự nhận, đóng và mở lại cả VS Code hoặc ứng dụng terminal đang chạy.

Để chạy Android, kết nối điện thoại hoặc mở emulator, sau đó dùng `flutter devices` và `flutter run -d <device-id>`. `flutter doctor` hiện báo Android SDK thiếu `cmdline-tools` và chưa có thiết bị Android kết nối; cần hoàn thiện Android toolchain trước khi chạy trên điện thoại.
