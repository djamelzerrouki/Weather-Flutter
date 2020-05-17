# Pixabay 🖼🎞📷🎥💻🏔⛰💡

#### Free images and videos you can use anywhere
Pixabay is a dynamic community of creatives sharing copyright-free images and videos. All content is published under the Pixabay license, making it safe to use without asking permission or giving credit to the artist - even for commercial purposes.

Pixabay API, which gives you access to over 1.9 million images, illustrations, vector graphics, and videos - for free - unlimited, reliable, stable, and easy-to-setup apps.

### Pixabay API
  Pixabay API. It contains API is a RESTful interface to search and retrieve free photos and videos released under the Pixabay license.
The API displays encrypted JSON objects. Keys and hash values are case-sensitive and character encoding is UTF-8. Hash keys may be returned in any random order and new keys may be added at any time.

Read more: [Pixabay API](https://pixabay.com/api/docs/)

## Screenshots
Home page           | Select your keyWord
:---------------------:|:------------------:
![Home page](assets/Capture1.PNG) | ![select city](assets/Capture2.PNG)
Result  (images)           |  Gif 
![Result ](assets/Capture3.PNG) | <img src="assets/untitled.gif" width="450"/>




Youtube: see video at youtube in this link [FLUTTER Development - Gallery Application using Pixabay API](https://www.youtube.com/watch?v=BUuV2bbf2FE&feature=youtu.be)

[![Gallery](assets/v.png)](https://www.youtube.com/watch?v=BUuV2bbf2FE&feature=youtu.be "FLUTTER Development - Gallery Application using Pixabay API - Click to Watch!")

# Getting Started

This project is a Flutter app that helps find images via the Pixabay API. It provides API on the RESTful interface to find and restore free photos and videos released under the Pixabay license. The API displays encrypted JSON objects.
I used this API to display beautifully designed images on mobile (Android and iOS), while developing a mobile cross-platform with a simple flutter code.

Some resources to get started with such a Flutter project:
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [Data & backend](https://flutter.dev/docs/development/data-and-backend/networking)
- [Networking](https://flutter.dev/docs/development/data-and-backend/networking)
- [JSON and serialization](https://flutter.dev/docs/development/data-and-backend/json)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Example

Retrieving photos of "yellow flowers". The search term q needs to be URL encoded:

https://pixabay.com/api/?key=16582589-68a2e0e5d7a78080a8fa51cbe&q=yellow+flowers&image_type=photo

#### Response for this request:
```json
{
"total": 4692,
"totalHits": 500,
"hits": [
    {
        "id": 195893,
        "pageURL": "https://pixabay.com/en/blossom-bloom-flower-195893/",
        "type": "photo",
        "tags": "blossom, bloom, flower",
        "previewURL": "https://cdn.pixabay.com/photo/2013/10/15/09/12/flower-195893_150.jpg"
        "previewWidth": 150,
        "previewHeight": 84,
        "webformatURL": "https://pixabay.com/get/35bbf209e13e39d2_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 360,
        "largeImageURL": "https://pixabay.com/get/ed6a99fd0a76647_1280.jpg",
        "fullHDURL": "https://pixabay.com/get/ed6a9369fd0a76647_1920.jpg",
        "imageURL": "https://pixabay.com/get/ed6a9364a9fd0a76647.jpg",
        "imageWidth": 4000,
        "imageHeight": 2250,
        "imageSize": 4731420,
        "views": 7671,
        "downloads": 6439,
        "favorites": 1,
        "likes": 5,
        "comments": 2,
        "user_id": 48777,
        "user": "Josch13",
        "userImageURL": "https://cdn.pixabay.com/user/2013/11/05/02-10-23-764_250x250.jpg",
    },
    {
        "id": 73424,
        ...
    },
    ...
]
}
```

# Pixabay Flutter

## Features
* [x] Unlimited requests, 
* [x] reliable,
* [x] stable, 
* [x] simple to set up.




## Requirements
* Dart
* Flutter
* Internet connection
* key of [pixabay](https://pixabay.com/fr/service/about/api/).



# Installing

### 1. Depend on it
Add this to your package's `pubspec.yaml` file:

 * http
 * intl
 *  cupertino_icons: ^0.1.2

```yaml
dependencies:
  sdk: flutter
             http: ^0.12.1
             intl:
             cupertino_icons: ^0.1.2
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```css
$ pub get
```

with `Flutter`:

```css
$ flutter packages get
```

### 3. Import it

Now in your `Dart` code, you can use: 

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
```

## Installation  this repository
1. Download the repository files (project) from the download section or clone this project by typing in the bash the following command:

       git clone https://github.com/djamelzerrouki/pixabay-flutter.git
2. Import it in Android studio or any other Flutter IDE and let Gradle download the required dependencies for you.
3. Run the application :D

## Contributing 💡
If you want to contribute to this project and make it better with new ideas, your pull request is very welcomed.
If you find any issue just put it in the repository issue section, thank you.

## Contact me
Email: djameljimmizerrouki@gmail.com  
LinkedIn: [DjamelZerrouki](https://www.linkedin.com/in/djamel-zerrouki-0785b6161/)  
Twitter: [@DjamelZerrouki](https://twitter.com/DjamelZerrouki5)

