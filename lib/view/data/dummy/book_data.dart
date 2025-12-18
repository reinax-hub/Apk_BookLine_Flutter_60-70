class BookData {

  /// ===============================
  /// ALL BOOKS (SUMBER UTAMA)
  /// ===============================
  static List<Map<String, dynamic>> allBooks = [
    {
      "id": 1,
      "name": "Sisi Tergelap Surga",
      "author": "Brian Khrisna",
      "img": "assets/img/4.jpg",
      "genre": "Fiksi",
      "rating": 5.0,
      "recent": true,
      "price": 75000,
      "qty":1,
      "synopsis":
          "Sisi Tergelap Surga adalah kisah tentang luka batin, kehilangan, dan proses berdamai dengan masa lalu. Novel ini menyajikan perjalanan emosional tokohnya dalam menghadapi realitas pahit kehidupan yang sering kali tidak berjalan sesuai harapan.",
      "description":
        "Novel ini menyajikan perjalanan emosional tokohnya dalam menghadapi realitas pahit kehidupan yang sering kali tidak berjalan sesuai harapan. Cerita dikemas dengan bahasa sederhana namun menyentuh.",
      // ULASAN
      "reviews": [
          {
            "user": "Amanda",
            "rating": 5,
            "comment": "Ceritanya dalam banget dan relatable."
          },
          {
            "user": "Rizky",
            "rating": 4,
            "comment": "Bahasanya ringan tapi emosional."
          }
        ]
    },
    {
  "id": 2,
  "name": "Dilan 1990",
  "author": "Pidi Baiq",
  "img": "assets/img/20.jpg",
  "genre": "Romantis",
  "rating": 4.8,
  "recent": false,
  "price": 65000,
  "qty": 1,
  "synopsis": "Dilan 1990 mengisahkan pertemuan Milea dan Dilan di Bandung tahun 1990. Dengan cara pendekatan yang unik dan penuh kejutan, Dilan perlahan mencuri hati Milea meski hubungan mereka harus menghadapi berbagai konflik dari lingkungan sekolah dan geng motor.",
  "description": "Novel ini menyajikan kisah cinta remaja yang ringan, unik, dan penuh humor khas Dilan. Cerita dikemas sederhana namun berkesan, menggambarkan masa muda, keberanian mencintai, dan kenangan yang sulit dilupakan.",
  "reviews": [
    {
      "user": "Alya",
      "rating": 5,
      "comment": "Romantis tapi nggak lebay, lucu dan ngena."
    },
    {
      "user": "Raka",
      "rating": 4,
      "comment": "Dialognya khas dan berkesan."
    }
  ]
},
{
  "id": 2,
  "name": "Student Hidjo",
  "author": "Marco Kartodikromo",
  "img": "assets/img/19.jpg",
  "genre": "Sastra",
  "rating": 4.6,
  "recent": false,
  "price": 70000,
  "qty": 1,
  "synopsis": "Student Hidjo menceritakan perjalanan pemuda Jawa bernama Hidjo yang menempuh pendidikan di Belanda dan menghadapi benturan budaya serta ketimpangan kolonial yang membentuk kesadaran nasionalismenya.",
  "description": "Novel ini menyajikan kritik tajam terhadap kolonialisme melalui perjalanan intelektual seorang pribumi terpelajar. Cerita bersifat reflektif dan membuka kesadaran tentang identitas, kesetaraan, dan harga diri bangsa.",
  "reviews": [
    {
      "user": "Dimas",
      "rating": 5,
      "comment": "Sastra klasik yang penuh makna dan kritik sosial."
    },
    {
      "user": "Nina",
      "rating": 4,
      "comment": "Bahasanya berat tapi sangat membuka wawasan."
    }
  ]
},
{
  "id": 3,
  "name": "Catatan Seorang Demonstran",
  "author": "Soe Hok Gie",
  "img": "assets/img/18.jpg",
  "genre": "Biografi",
  "rating": 4.9,
  "recent": false,
  "price": 80000,
  "qty": 1,
  "synopsis": "Buku ini berisi catatan dan refleksi pemikiran Soe Hok Gie tentang ketidakadilan, politik, dan tanggung jawab moral mahasiswa dalam menghadapi kekuasaan.",
  "description": "Ditulis secara jujur dan personal, buku ini merekam idealisme dan keberanian seorang intelektual muda. Isinya menggugah pembaca untuk berpikir kritis dan berani bersikap.",
  "reviews": [
    {
      "user": "Fahri",
      "rating": 5,
      "comment": "Sangat menginspirasi dan relevan sampai sekarang."
    },
    {
      "user": "Putri",
      "rating": 5,
      "comment": "Buku wajib buat mahasiswa."
    }
  ]
},
{
  "id": 4,
  "name": "Panggil Aku Kartini Saja",
  "author": "R.A. Kartini",
  "img": "assets/img/17.jpg",
  "genre": "Sejarah",
  "rating": 4.7,
  "recent": false,
  "price": 75000,
  "qty": 1,
  "synopsis": "Buku ini merupakan kumpulan surat R.A. Kartini yang berisi pemikirannya tentang pendidikan, emansipasi perempuan, dan kritik terhadap ketidakadilan sosial dan kolonial.",
  "description": "Karya ini menampilkan sosok Kartini yang visioner dan berani. Melalui tulisannya, pembaca diajak memahami perjuangan intelektual dan nilai kemanusiaan yang melampaui zamannya.",
  "reviews": [
    {
      "user": "Sari",
      "rating": 5,
      "comment": "Sangat inspiratif dan membuka pikiran."
    },
    {
      "user": "Reno",
      "rating": 4,
      "comment": "Isinya dalam dan penuh makna sejarah."
    }
  ]
},

{
  "id": 5,
  "name": "Habis Gelap Terbitlah Terang",
  "author": "Dahlan Iskan",
  "img": "assets/img/16.jpg",
  "genre": "Inspiratif",
  "rating": 4.8,
  "recent": false,
  "price": 85000,
  "qty": 1,
  "synopsis": "Buku ini mengisahkan perjuangan Dahlan Iskan dalam membenahi sektor kelistrikan Indonesia di tengah berbagai tantangan birokrasi dan tekanan politik.",
  "description": "Ditulis dengan gaya lugas dan jujur, buku ini menyampaikan nilai kepemimpinan, keberanian, dan integritas dalam membawa perubahan nyata bagi masyarakat.",
  "reviews": [
    {
      "user": "Bagas",
      "rating": 5,
      "comment": "Motivatif dan realistis."
    },
    {
      "user": "Lina",
      "rating": 4,
      "comment": "Membuka sudut pandang tentang kepemimpinan."
    }
  ]
},

{
  "id": 6,
  "name": "Bulan",
  "author": "Tere Liye",
  "img": "assets/img/14.jpg",
  "genre": "Fantasi",
  "rating": 4.7,
  "recent": true,
  "price": 90000,
  "qty": 1,
  "synopsis": "Bulan melanjutkan petualangan Raib, Seli, dan Ali ke Klan Bulan, menghadapi konflik baru, rahasia besar, dan ujian persahabatan di dunia paralel.",
  "description": "Novel ini menyajikan petualangan fantasi yang seru dan penuh ketegangan. Cerita menekankan pentingnya kerja sama, kecerdikan, dan kesetiaan dalam menghadapi tantangan besar.",
  "reviews": [
    {
      "user": "Kevin",
      "rating": 5,
      "comment": "Seru dan bikin nagih."
    },
    {
      "user": "Nabila",
      "rating": 4,
      "comment": "Dunia paralelnya keren banget."
    }
  ]
},

{
  "id": 7,
  "name": "Home Sweet Loan",
  "author": "Almira Bastari",
  "img": "assets/img/12.jpg",
  "genre": "Fiksi",
  "rating": 4.7,
  "recent": true,
  "price": 88000,
  "qty": 1,
  "synopsis": "Home Sweet Loan menceritakan perjuangan Kaluna sebagai generasi sandwich yang berjuang menghadapi tekanan finansial, mimpi memiliki rumah sendiri, dan tuntutan hidup di kota besar.",
  "description": "Novel ini mengangkat realitas hidup generasi muda dengan cara yang hangat dan realistis. Ceritanya sangat relevan, menyentuh, dan dekat dengan kehidupan sehari-hari pembaca.",
  "reviews": [
    {
      "user": "Nadya",
      "rating": 5,
      "comment": "Relate banget sama kehidupan sekarang."
    },
    {
      "user": "Arif",
      "rating": 4,
      "comment": "Ceritanya ringan tapi kena."
    }
  ]
},

{
  "id": 8,
  "name": "Luka Cita",
  "author": "Valerie Patkar",
  "img": "assets/img/8.jpg",
  "genre": "Fiksi",
  "rating": 4.6,
  "recent": true,
  "price": 82000,
  "qty": 1,
  "synopsis": "Luka Cita mengisahkan perjalanan emosional seorang perempuan yang berusaha berdamai dengan kehilangan, luka batin, dan kenangan masa lalu.",
  "description": "Ditulis dengan bahasa puitis dan tenang, novel ini mengajak pembaca memahami proses berduka dan penerimaan. Ceritanya lembut namun emosional.",
  "reviews": [
    {
      "user": "Aurel",
      "rating": 5,
      "comment": "Sedih tapi indah."
    },
    {
      "user": "Dito",
      "rating": 4,
      "comment": "Bahasanya halus dan menyentuh."
    }
  ]
},
{
  "id": 9,
  "name": "Amba",
  "author": "Laksmi Pamuntjak",
  "img": "assets/img/6.jpg",
  "genre": "Sastra",
  "rating": 4.8,
  "recent": false,
  "price": 95000,
  "qty": 1,
  "synopsis": "Amba mengisahkan kisah cinta dan kehilangan berlatar tragedi politik 1965, mengikuti pencarian Amba terhadap kekasihnya yang hilang.",
  "description": "Novel ini memadukan kisah cinta dengan luka sejarah bangsa. Ditulis puitis dan mendalam, ceritanya kuat secara emosional dan intelektual.",
  "reviews": [
    {
      "user": "Rani",
      "rating": 5,
      "comment": "Sangat dalam dan berkelas."
    },
    {
      "user": "Yoga",
      "rating": 4,
      "comment": "Sarat sejarah dan emosi."
    }
  ]
},
{
  "id": 10,
  "name": "The Alchemist",
  "author": "Paulo Coelho",
  "img": "assets/img/13.jpg",
  "genre": "Fiksi",
  "rating": 4.9,
  "recent": false,
  "price": 90000,
  "qty": 1,
  "synopsis": "The Alchemist mengisahkan perjalanan Santiago dalam mengejar mimpinya hingga ke padang pasir Mesir, mencari makna hidup dan takdir.",
  "description": "Novel ini sarat pesan filosofis dan spiritual tentang mimpi, keberanian, dan mendengarkan kata hati. Ceritanya sederhana namun penuh makna.",
  "reviews": [
    {
      "user": "Kevin",
      "rating": 5,
      "comment": "Mengubah cara pandang hidup."
    },
    {
      "user": "Maya",
      "rating": 5,
      "comment": "Sederhana tapi sangat bermakna."
    }
  ]
},
{
  "id": 11,
  "name": "Sang Pemimpi",
  "author": "Andrea Hirata",
  "img": "assets/img/2.jpg",
  "genre": "Inspiratif",
  "rating": 4.8,
  "recent": false,
  "price": 78000,
  "qty": 1,
  "synopsis": "Sang Pemimpi mengisahkan perjuangan Ikal, Arai, dan Jimbron dalam meraih mimpi besar melalui pendidikan di tengah keterbatasan hidup.",
  "description": "Novel ini penuh semangat, humor, dan inspirasi. Ceritanya menegaskan bahwa mimpi besar dapat mengubah masa depan siapa pun.",
  "reviews": [
    {
      "user": "Farhan",
      "rating": 5,
      "comment": "Bikin semangat ngejar mimpi."
    },
    {
      "user": "Intan",
      "rating": 4,
      "comment": "Inspiratif dan menghibur."
    }
  ]
}



  ];

  /// ===============================
  /// RECENTLY VIEWED (DINAMIS)
  /// ===============================
  static List recentBooks = [];

  static void addRecent(Map book) {
    recentBooks.removeWhere((e) => e["id"] == book["id"]);
    recentBooks.insert(0, book);
    if (recentBooks.length > 10) {
      recentBooks.removeLast();
    }
  }

  /// ===============================
  /// FILTER BY GENRE
  /// ===============================
  static List<Map<String, dynamic>> byGenre(String genre) {
    return allBooks.where((b) => b["genre"] == genre).toList();
  }

  /// ===============================
  /// BESTSELLER (RATING >= 4.5)
  /// ===============================
  static List<Map<String, dynamic>> bestSeller() {
    return allBooks.where((b) => b["rating"] >= 4.5).toList();
  }
}
