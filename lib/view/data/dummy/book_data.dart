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
          "Jakarta kerap menjadi pelabuhan bagi mereka yang datang membawa sekoper harapan. Mereka yang siap bertaruh dengan nasibnya sendiri-sendiri. Namun, kota ini selalu mampu melumat habis harapan dan menukarnya dengan keputusasaan. Pemulung, pengamen, pramuria yang menjajakan tubuh agar anaknya bisa makan, pemimpin-pemimpin kecil yang culas, lelaki tua di balik kostum badut ayam, pencuri motor yang ingin membeli obat untuk ibunya, remaja yang melumuri tubuh dengan cat perak, hingga mereka yang bergelut di terminal setelah terpaksa merelakan impiannya habis digerus kejinya ibu kota. Di Jakarta, semua orang dipaksa bergelut dan bertempur demi bisa hidup dari hari ke hari. Dan di kampung inilah semua itu dimulai. Sebuah cerita tentang kehidupan orang-orang yang hidup di sisi tergelap surga kota bernama Jakarta...",

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
  "genre": "Romance",
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
},
  {
    "id": 12,
    "name": "Seporsi Mie Ayam Sebelum Mati",
    "author": "Brian Khrisna",
    "img": "assets/img/1.jpg",
    "genre": "Fiksi",
    "rating": 4.8,
    "recent": true,
    "price": 78000,
    "qty": 1,
    "synopsis": "Sebuah novel tentang kehidupan sehari-hari yang sederhana namun sarat makna. Mengisahkan perjalanan hidup seseorang yang menemukan kebahagiaan dalam hal-hal kecil, seperti sepiring mie ayam. Novel ini mengajak pembaca merenungkan arti kehidupan dan bagaimana kita menghargai setiap momen sebelum semuanya berakhir.",
    "description": "Novel karya Brian Khrisna ini menghadirkan cerita yang hangat dan penuh filosofi kehidupan. Dengan gaya bercerita yang ringan namun menyentuh, buku ini mengajak pembaca untuk lebih menghargai kebahagiaan sederhana dalam hidup.",
    "reviews": [
      {
        "user": "Dina",
        "rating": 5,
        "comment": "Cerita yang simpel tapi bikin nangis. Sangat menyentuh!"
      },
      {
        "user": "Farhan",
        "rating": 4,
        "comment": "Brian Khrisna selalu berhasil bikin cerita yang relate dengan kehidupan sehari-hari."
      }
    ]
  },
  {
    "id": 13,
    "name": "Luka Cita",
    "author": "Valerif Patkar",
    "img": "assets/img/8.jpg",
    "genre": "Fiksi",
    "rating": 4.6,
    "recent": true,
    "price": 85000,
    "qty": 1,
    "synopsis": "Untuk mereka yang terluka dalam perjalanan menggapai cita-cita. Novel ini mengisahkan perjuangan seseorang dalam meraih impian di tengah berbagai rintangan dan kekecewaan. Sebuah bacaan yang menginspirasi tentang ketahanan mental dan tidak menyerah pada keadaan.",
    "description": "Luka Cita adalah novel yang mengangkat tema perjuangan dan harapan. Dengan ilustrasi sampul yang penuh warna dan makna, buku ini mengajak pembaca untuk tetap percaya pada mimpi meskipun terluka berkali-kali.",
    "reviews": [
      {
        "user": "Sari",
        "rating": 5,
        "comment": "Sangat menginspirasi! Cocok untuk yang sedang berjuang meraih mimpi."
      },
      {
        "user": "Budi",
        "rating": 4,
        "comment": "Ceritanya membumi dan penuh motivasi."
      }
    ]
  },
  {
    "id": 14,
    "name": "Yang Fana Adalah Waktu",
    "author": "Sapardi Djoko Damono",
    "img": "assets/img/9.jpg",
    "genre": "Fiksi",
    "rating": 4.9,
    "recent": false,
    "price": 95000,
    "qty": 1,
    "synopsis": "Novel ketiga dari Trilogi Hujan Bulan Juni karya penyair besar Indonesia, Sapardi Djoko Damono. Mengisahkan tentang perjalanan waktu, kenangan, dan hubungan antarmanusia yang terus berubah seiring berjalannya waktu. Novel ini penuh puisi dan filosofi mendalam tentang kehidupan.",
    "description": "Sebagai bagian dari trilogi yang sangat terkenal, novel ini menampilkan gaya khas Sapardi yang puitis dan penuh makna. Dengan desain minimalis yang elegan, buku ini mengajak pembaca merenung tentang arti waktu dan kenangan.",
    "reviews": [
      {
        "user": "Linda",
        "rating": 5,
        "comment": "Puitis sekali! Sapardi memang luar biasa."
      },
      {
        "user": "Ardi",
        "rating": 5,
        "comment": "Novel yang indah dan penuh filosofi hidup."
      }
    ]
  },
  {
    "id": 15,
    "name": "Kami (Bukan) Generasi Bac*t",
    "author": "J.S. Khairen",
    "img": "assets/img/10.jpg",
    "genre": "Fiksi",
    "rating": 4.5,
    "recent": true,
    "price": 72000,
    "qty": 1,
    "synopsis": "Sebuah novel yang mengangkat suara generasi muda Indonesia. Mengisahkan tentang stigma, prasangka, dan perjuangan generasi muda dalam membuktikan bahwa mereka bukan generasi yang rusak. Novel ini penuh humor, kritik sosial, dan harapan untuk masa depan yang lebih baik.",
    "description": "Dengan sampul yang unik dan ilustrasi yang lucu, novel ini menghadirkan perspektif segar tentang generasi muda. J.S. Khairen berhasil mengemas kritik sosial dengan cara yang ringan dan menghibur.",
    "reviews": [
      {
        "user": "Tomi",
        "rating": 4,
        "comment": "Lucu tapi nyindir banget. Relate sama kehidupan anak muda."
      },
      {
        "user": "Maya",
        "rating": 5,
        "comment": "Akhirnya ada yang bela generasi muda! Bukunya keren."
      }
    ]
  },
  {
    "id": 16,
    "name": "Hujan Bulan Juni",
    "author": "Sapardi Djoko Damono",
    "img": "assets/img/11.jpg",
    "genre": "Fiksi",
    "rating": 5.0,
    "recent": false,
    "price": 92000,
    "qty": 1,
    "synopsis": "Novel pertama dari trilogi yang sangat terkenal ini mengisahkan tentang cinta, kerinduan, dan puisi. Menceritakan perjalanan cinta seorang penyair dan kekasihnya yang penuh dengan keindahan kata-kata. Novel ini menjadi fenomena di kalangan pecinta sastra Indonesia.",
    "description": "Hujan Bulan Juni adalah karya monumental Sapardi Djoko Damono yang memadukan prosa dan puisi dengan sempurna. Dengan sampul yang elegan dan tulisan tangan yang artistik, novel ini menjadi salah satu yang paling dicari oleh pembaca Indonesia.",
    "reviews": [
      {
        "user": "Putri",
        "rating": 5,
        "comment": "Novel terbaik yang pernah saya baca. Sangat puitis!"
      },
      {
        "user": "Agung",
        "rating": 5,
        "comment": "Karya masterpiece! Wajib punya buat pecinta sastra."
      }
    ]
  },
  {
    "id": 17,
    "name": "Matahari",
    "author": "Tere Liye",
    "img": "assets/img/13.jpg",
    "genre": "Fantasi",
    "rating": 4.9,
    "recent": true,
    "price": 88000,
    "qty": 1,
    "synopsis": "Bagian dari serial Bumi karya Tere Liye, novel ini melanjutkan petualangan fantasi yang penuh aksi dan misteri. Mengisahkan tentang dunia paralel, kekuatan supernatural, dan pertarungan antara kebaikan dan kejahatan. Novel yang cocok untuk pecinta genre fantasi.",
    "description": "Dengan desain sampul yang artistik dan penuh simbolisme, Matahari adalah novel yang menghadirkan dunia fantasi yang kaya dan kompleks. Tere Liye berhasil menciptakan narasi yang mendebarkan dan penuh twist.",
    "reviews": [
      {
        "user": "Rina",
        "rating": 5,
        "comment": "Seru banget! Tere Liye nggak pernah mengecewakan."
      },
      {
        "user": "Doni",
        "rating": 4,
        "comment": "Ceritanya bikin penasaran terus. Cocok buat yang suka fantasi."
      }
    ]
  },
  {
    "id": 18,
    "name": "Bulan",
    "author": "Tere Liye",
    "img": "assets/img/14.jpg",
    "genre": "Fantasi",
    "rating": 4.8,
    "recent": true,
    "price": 86000,
    "qty": 1,
    "synopsis": "Melanjutkan serial Bumi, novel ini mengisahkan petualangan yang lebih gelap dan kompleks. Bulan membawa pembaca ke dalam konflik yang lebih dalam tentang kekuatan, pengorbanan, dan konsekuensi dari setiap pilihan. Sebuah bacaan yang menegangkan dan emosional.",
    "description": "Bulan menghadirkan nuansa yang lebih gelap dibanding novel sebelumnya dalam serial ini. Dengan sampul berwarna biru yang mistis dan penuh detail, novel ini melanjutkan kisah yang membuat pembaca tidak bisa berhenti membaca.",
    "reviews": [
      {
        "user": "Indah",
        "rating": 5,
        "comment": "Lebih seru dari Matahari! Plot twistnya gila."
      },
      {
        "user": "Eka",
        "rating": 4,
        "comment": "Ceritanya makin dalam dan kompleks. Keren!"
      }
    ]
  },
  {
    "id": 19,
    "name": "Senja Bersama Ayah",
    "author": "@rahayyupp",
    "img": "assets/img/22.jpg",
    "genre": "Fiksi",
    "rating": 4.7,
    "recent": true,
    "price": 68000,
    "qty": 1,
    "synopsis": "Sebuah kisah hangat tentang hubungan ayah dan anak yang penuh makna. Novel ini mengisahkan momen-momen sederhana namun berharga antara seorang ayah dan anaknya, mengajarkan tentang cinta, pengorbanan, dan kenangan yang tak terlupakan.",
    "description": "Dengan ilustrasi sampul yang menyentuh menampilkan seorang ayah dan anak duduk bersama di tepi danau, novel ini menghadirkan cerita yang emosional tentang ikatan keluarga. Cocok untuk siapa saja yang ingin merenungkan hubungan dengan orang tua.",
    "reviews": [
      {
        "user": "Dewi",
        "rating": 5,
        "comment": "Bikin nangis! Mengingatkan saya pada ayah saya."
      },
      {
        "user": "Anton",
        "rating": 4,
        "comment": "Cerita yang sederhana tapi sangat menyentuh hati."
      }
    ]
  },
  {
    "id": 20,
    "name": "Negeri Para Bedebah",
    "author": "Tere Liye",
    "img": "assets/img/23.jpg",
    "genre": "Thriller",
    "rating": 4.6,
    "recent": true,
    "price": 89000,
    "qty": 1,
    "synopsis": "Novel thriller yang mengangkat isu korupsi dan kejahatan politik di Indonesia. Mengisahkan perjuangan sekelompok orang yang berusaha melawan sistem korup yang sudah mengakar. Novel ini penuh ketegangan, aksi, dan kritik sosial yang tajam.",
    "description": "Dengan sampul merah yang striking dan siluet tokoh-tokoh misterius, Negeri Para Bedebah adalah novel yang berani mengkritik sistem korupsi. Tere Liye menghadirkan narasi yang cepat dan menegangkan dengan pesan moral yang kuat.",
    "reviews": [
      {
        "user": "Hendra",
        "rating": 5,
        "comment": "Novel yang berani! Bikin mata terbuka tentang realitas negara kita."
      },
      {
        "user": "Sinta",
        "rating": 4,
        "comment": "Seru dan penuh ketegangan dari awal sampai akhir."
      }
    ]
  },
  {
    "id": 21,
    "name": "Azzamine",
    "author": "Sophie Aulia",
    "img": "assets/img/24.jpg",
    "genre": "Romansa",
    "rating": 4.5,
    "recent": true,
    "price": 79000,
    "qty": 1,
    "synopsis": "Kisah cinta antara Azzam dan Jasmine yang penuh dengan perjuangan dan rintangan. Novel ini mengisahkan bagaimana dua orang dari latar belakang yang berbeda berjuang mempertahankan cinta mereka. Sebuah romansa yang manis dan mengharukan.",
    "description": "Dengan ilustrasi sampul yang indah menampilkan pasangan berjalan di padang rumput dengan langit senja, Azzamine adalah novel romansa yang menyentuh. Sophie Aulia berhasil menghadirkan kisah cinta yang realistis dan penuh emosi.",
    "reviews": [
      {
        "user": "Nisa",
        "rating": 5,
        "comment": "Romantis banget! Bikin baper sepanjang baca."
      },
      {
        "user": "Yudi",
        "rating": 4,
        "comment": "Cerita cinta yang manis dan nggak lebay."
      }
    ]
  },
  {
    "id": 22,
    "name": "Rumah untuk Alie",
    "author": "Lenn Liu",
    "img": "assets/img/26.jpg",
    "genre": "Fiksi",
    "rating": 4.4,
    "recent": true,
    "price": 76000,
    "qty": 1,
    "synopsis": "Novel tentang pencarian jati diri dan arti rumah yang sebenarnya. Mengisahkan perjalanan Alie dalam menemukan tempat di mana ia benar-benar merasa diterima dan dicintai. Sebuah cerita yang menghangatkan hati tentang keluarga dan rasa memiliki.",
    "description": "Dengan ilustrasi sampul yang menawan menampilkan sebuah toko dengan atap merah, novel ini menghadirkan cerita yang penuh kehangatan. Lenn Liu menulis dengan indah tentang makna rumah yang lebih dari sekadar tempat tinggal.",
    "reviews": [
      {
        "user": "Laila",
        "rating": 4,
        "comment": "Cerita yang hangat dan bikin nyaman."
      },
      {
        "user": "Faisal",
        "rating": 5,
        "comment": "Novel yang membuat saya menghargai keluarga lebih lagi."
      }
    ]
  },
  {
    "id": 23,
    "name": "Cerita Rakyat Timun Mas",
    "author": "Penulis Tidak Diketahui",
    "img": "assets/img/27.jpg",
    "genre": "Cerita Rakyat",
    "rating": 4.3,
    "recent": false,
    "price": 45000,
    "qty": 1,
    "synopsis": "Cerita rakyat klasik Indonesia tentang seorang gadis bernama Timun Mas yang harus melawan raksasa jahat. Kisah legendaris ini mengajarkan tentang keberanian, kecerdikan, dan kekuatan dari hal-hal kecil untuk mengalahkan kejahatan.",
    "description": "Dengan ilustrasi yang colorful dan menarik, buku ini menghadirkan kembali cerita rakyat Indonesia yang terkenal. Cocok untuk anak-anak dan siapa saja yang ingin mengenal kembali cerita tradisional Nusantara.",
    "reviews": [
      {
        "user": "Ibu Ratna",
        "rating": 5,
        "comment": "Bagus untuk bacaan anak. Ilustrasinya menarik!"
      },
      {
        "user": "Pak Budi",
        "rating": 4,
        "comment": "Cerita klasik yang nggak pernah bosan."
      }
    ]
  },
  {
    "id": 24,
    "name": "Filosofi Teras",
    "author": "Henry Manampiring",
    "img": "assets/img/28.jpg",
    "genre": "Non-Fiksi",
    "rating": 4.9,
    "recent": true,
    "price": 98000,
    "qty": 1,
    "synopsis": "Filsafat Yunani-Romawi Kuno untuk Mental Tangguh Masa Kini. Buku ini menjelaskan filosofi Stoikisme dengan cara yang mudah dipahami dan relevan untuk kehidupan modern. Membantu pembaca menghadapi stres, kecemasan, dan tantangan hidup dengan lebih tenang.",
    "description": "Dengan ilustrasi sampul yang fun menampilkan tokoh filsuf bersama anak muda modern, Filosofi Teras adalah buku self-help yang berbeda. Henry Manampiring berhasil membuat filosofi kuno menjadi praktis dan aplikatif untuk kehidupan sehari-hari.",
    "reviews": [
      {
        "user": "Andi",
        "rating": 5,
        "comment": "Buku yang mengubah perspektif hidup saya!"
      },
      {
        "user": "Rini",
        "rating": 5,
        "comment": "Wajib dibaca! Sangat membantu untuk mental health."
      }
    ]
  },
  {
    "id": 25,
    "name": "Bandung After Rain",
    "author": "Wulan Nur Amalia",
    "img": "assets/img/29.jpg",
    "genre": "Fiksi",
    "rating": 4.4,
    "recent": true,
    "price": 73000,
    "qty": 1,
    "synopsis": "Karna demit sima. Tidak satu pun yang Arini Genta tahu sebelumnya, bagaimana cinta persahabatan bisa peserta menyangka, sebuah novel tentang persahabatan, cinta, dan kehidupan di Kota Bandung. Mengisahkan perjalanan hidup para tokohnya yang saling terkait di tengah kehidupan kota yang dinamis.",
    "description": "Dengan ilustrasi sampul yang memukau menampilkan suasana Bandung setelah hujan, novel ini menghadirkan cerita yang penuh nostalgia. Wulan Nur Amalia menulis dengan indah tentang kehidupan, cinta, dan persahabatan di kota kembang.",
    "reviews": [
      {
        "user": "Dinda",
        "rating": 4,
        "comment": "Bikin kangen Bandung! Ceritanya manis."
      },
      {
        "user": "Reza",
        "rating": 5,
        "comment": "Penggambaran Bandung-nya sangat hidup dan detail."
      }
    ]
  },
  {
    "id": 26,
    "name": "Bukan 350 Tahun Dijajah",
    "author": "G.J. Resink",
    "img": "assets/img/30.jpg",
    "genre": "Sejarah",
    "rating": 4.7,
    "recent": false,
    "price": 105000,
    "qty": 1,
    "synopsis": "Buku sejarah yang membongkar mitos bahwa Indonesia dijajah selama 350 tahun. G.J. Resink menjelaskan dengan data dan fakta bahwa penjajahan tidak terjadi secara merata di seluruh Nusantara. Buku ini mengubah perspektif tentang sejarah kolonialisme di Indonesia.",
    "description": "Dengan sampul yang menampilkan ilustrasi pertempuran masa kolonial, buku ini adalah bacaan penting untuk memahami sejarah Indonesia yang sebenarnya. Pengantar oleh A.B. Lapian menambah kredibilitas dan kedalaman analisis buku ini.",
    "reviews": [
      {
        "user": "Prof. Adi",
        "rating": 5,
        "comment": "Buku yang wajib dibaca untuk memahami sejarah Indonesia."
      },
      {
        "user": "Siswa",
        "rating": 4,
        "comment": "Membuka mata tentang fakta sejarah yang sebenarnya."
      }
    ]
  },
  {
    "id": 27,
    "name": "Rumah Lebah",
    "author": "Ruwi Meita",
    "img": "assets/img/31.jpg",
    "genre": "Fiksi",
    "rating": 4.3,
    "recent": true,
    "price": 71000,
    "qty": 1,
    "synopsis": "Setiap wajah memiliki rahasia. Novel misteri yang mengisahkan tentang rahasia-rahasia gelap yang tersembunyi di balik kehidupan yang tampak sempurna. Sebuah cerita yang menegangkan dan penuh kejutan tentang kebenaran yang tersembunyi.",
    "description": "Dengan sampul berwarna kuning yang mencolok menampilkan wajah seorang anak perempuan dengan lebah-lebah di sekitarnya, Rumah Lebah adalah novel yang unik dan misterius. Ruwi Meita menciptakan atmosfer yang mencekam dan penuh teka-teki.",
    "reviews": [
      {
        "user": "Vina",
        "rating": 4,
        "comment": "Misterius dan bikin penasaran!"
      },
      {
        "user": "Arman",
        "rating": 5,
        "comment": "Plot twist-nya nggak terduga. Suka banget!"
      }
    ]
  },
  {
    "id": 28,
    "name": "Ayah",
    "author": "Andrea Hirata",
    "img": "assets/img/32.jpg",
    "genre": "Fiksi",
    "rating": 4.8,
    "recent": true,
    "price": 94000,
    "qty": 1,
    "synopsis": "Sebuah novel memoir yang mengharukan tentang sosok ayah. Andrea Hirata menulis dengan penuh emosi tentang pengorbanan, cinta, dan perjuangan seorang ayah untuk keluarganya. Novel ini mengajak pembaca untuk menghargai sosok ayah dalam hidup mereka.",
    "description": "Dengan sampul yang dramatis menampilkan siluet seorang ayah dan anak dengan balon di latar belakang kota, novel ini adalah karya yang sangat personal dari Andrea Hirata. Cerita yang menyentuh hati tentang hubungan ayah dan anak.",
    "reviews": [
      {
        "user": "Citra",
        "rating": 5,
        "comment": "Menangis dari awal sampai akhir. Andrea Hirata luar biasa!"
      },
      {
        "user": "Wawan",
        "rating": 5,
        "comment": "Novel yang membuat saya lebih menghargai ayah saya."
      }
    ]
  },
  {
    "id": 29,
    "name": "Laskar Pelangi",
    "author": "Andrea Hirata",
    "img": "assets/img/33.jpg",
    "genre": "Fiksi",
    "rating": 5.0,
    "recent": false,
    "price": 99000,
    "qty": 1,
    "synopsis": "Novel legendaris tentang perjuangan pendidikan di Belitung. Kisah inspiratif tentang 10 anak dari keluarga miskin yang berjuang meraih mimpi mereka melalui pendidikan. Novel ini mengajarkan tentang persahabatan, harapan, dan kekuatan mimpi.",
    "description": "Dengan sampul yang penuh warna menampilkan siluet anak-anak dengan latar pelangi, Laskar Pelangi adalah novel yang telah menginspirasi jutaan pembaca. Karya fenomenal Andrea Hirata yang telah difilmkan dan menjadi kebanggaan sastra Indonesia.",
    "reviews": [
      {
        "user": "Mira",
        "rating": 5,
        "comment": "Novel terbaik Indonesia! Sangat menginspirasi."
      },
      {
        "user": "Joko",
        "rating": 5,
        "comment": "Wajib dibaca semua orang Indonesia. Masterpiece!"
      }
    ]
  },
  {
    "id": 30,
    "name": "Negeri 5 Menara",
    "author": "A. Fuadi",
    "img": "assets/img/34.jpg",
    "genre": "Fiksi",
    "rating": 4.8,
    "recent": false,
    "price": 89000,
    "qty": 1,
    "synopsis": "Sebuah novel yang berinspirasi dari kisah nyata tentang kehidupan di pesantren. Mengisahkan persahabatan enam santri dengan latar belakang berbeda yang bersatu dalam mimpi besar. Novel ini mengajarkan tentang persahabatan, mimpi, dan perjuangan.",
    "description": "Dengan sampul yang misterius berwarna oranye kecoklatan menampilkan menara jam, Negeri 5 Menara adalah novel yang telah menjadi bestseller. A. Fuadi berhasil menghadirkan cerita yang inspiratif tentang kekuatan mimpi dan persahabatan.",
    "reviews": [
      {
        "user": "Hasan",
        "rating": 5,
        "comment": "Novel yang sangat menginspirasi! Man Jadda Wa Jadda!"
      },
      {
        "user": "Nurul",
        "rating": 4,
        "comment": "Cerita persahabatan yang indah dan memotivasi."
      }
    ]
  },
  {
    "id": 31,
    "name": "Pulang Sekolah Menuju Harapan pada Esok Hari",
    "author": "Penulis Tidak Diketahui",
    "img": "assets/img/35.jpg",
    "genre": "Fiksi",
    "rating": 4.2,
    "recent": true,
    "price": 67000,
    "qty": 1,
    "synopsis": "Novel fantasi petualangan tentang anak-anak sekolah yang menemukan portal ajaib dalam perjalanan pulang sekolah. Mereka harus menyelamatkan masa depan dengan menjelajahi berbagai dimensi. Sebuah cerita yang penuh imajinasi dan petualangan.",
    "description": "Dengan ilustrasi sampul yang colorful dan fantastis menampilkan anak-anak naik makhluk terbang, novel ini menghadirkan petualangan yang seru. Cocok untuk pembaca muda yang menyukai cerita fantasi dan petualangan.",
    "reviews": [
      {
        "user": "Alya",
        "rating": 4,
        "comment": "Seru banget! Ilustrasinya juga keren."
      },
      {
        "user": "Fajar",
        "rating": 4,
        "comment": "Cerita fantasi yang menarik untuk anak-anak."
      }
    ]
  },
  {
    "id": 32,
    "name": "Those Eyes",
    "author": "Raymond Beckham & Darius Cook",
    "img": "assets/img/39.jpg",
    "genre": "Horror",
    "rating": 4.1,
    "recent": true,
    "price": 82000,
    "qty": 1,
    "synopsis": "Novel horor yang menceritakan tentang rumah berhantu dengan mata misterius yang selalu mengawasi penghuninya. Sebuah kisah yang mencekam tentang teror psikologis dan kegelapan yang mengintai di dalam rumah tua.",
    "description": "Dengan sampul yang mengerikan menampilkan rumah dengan mata raksasa yang menyala di kegelapan, Those Eyes adalah novel horor yang akan membuat bulu kuduk merinding. Kolaborasi dua penulis ini menghasilkan narasi yang mencekam dan penuh ketegangan.",
    "reviews": [
      {
        "user": "Dani",
        "rating": 4,
        "comment": "Serem banget! Jangan baca malam-malam."
      },
      {
        "user": "Lisa",
        "rating": 4,
        "comment": "Novel horor yang bikin nggak bisa tidur."
      }
    ]
  },
  {
    "id": 33,
    "name": "Perempuan di Titik Nol",
    "author": "Nawal el-Saadawi",
    "img": "assets/img/38.jpg",
    "genre": "Fiksi",
    "rating": 4.6,
    "recent": false,
    "price": 87000,
    "qty": 1,
    "synopsis": "Novel yang mengangkat isu kekerasan terhadap perempuan dan perjuangan untuk mendapatkan kebebasan. Berdasarkan kisah nyata seorang perempuan Mesir yang menjalani hukuman mati. Sebuah karya yang kuat dan berani mengkritik sistem patriarki.",
    "description": "Dengan sampul merah yang striking dan ilustrasi minimalis, novel ini adalah karya penting dalam sastra feminis. Diterjemahkan ke dalam bahasa Indonesia oleh Mochtar Lubis, buku ini menjadi bacaan wajib untuk memahami perjuangan perempuan.",
    "reviews": [
      {
        "user": "Sari",
        "rating": 5,
        "comment": "Sangat powerful! Novel yang membuka mata."
      },
      {
        "user": "Yanto",
        "rating": 4,
        "comment": "Berat tapi penting untuk dibaca."
      }
    ]
  },
  {
    "id": 34,
    "name": "Sejarah Runtuhnya Sriwijaya dan Majapahit",
    "author": "Sri Wintala Achmad",
    "img": "assets/img/37.jpg",
    "genre": "Sejarah",
    "rating": 4.5,
    "recent": false,
    "price": 112000,
    "qty": 1,
    "synopsis": "Buku sejarah yang menelusuri jejak Sandyakala atau masa kehancuran dua imperium besar Nusantara: Sriwijaya dan Majapahit. Menganalisis faktor-faktor politik, ekonomi, dan sosial yang menyebabkan keruntuhan kedua kerajaan tersebut.",
    "description": "Dengan ilustrasi sampul yang menampilkan kapal perang dan candi, buku ini adalah kajian mendalam tentang sejarah Nusantara. Sri Wintala Achmad menyajikan analisis yang komprehensif dan mudah dipahami tentang periode penting dalam sejarah Indonesia.",
    "reviews": [
      {
        "user": "Guru Sejarah",
        "rating": 5,
        "comment": "Referensi yang sangat baik untuk memahami sejarah Nusantara."
      },
      {
        "user": "Mahasiswa",
        "rating": 4,
        "comment": "Buku yang informatif dan detail."
      }
    ]
  },
  {
    "id": 35,
    "name": "Segala Yang Diisap Langit",
    "author": "Pinto Anugrah",
    "img": "assets/img/36.jpg",
    "genre": "Fiksi",
    "rating": 4.3,
    "recent": true,
    "price": 75000,
    "qty": 1,
    "synopsis": "Novel yang bercerita tentang pertautan abadi antara kebanggaan dan kepandiran, kepongahan dan ketidaktahuan, serta kehormatan dan kebiadaban. Penerima Residensi Penulis Indonesia 2019. Novel ini mengangkat tema-tema filosofis tentang sifat manusia.",
    "description": "Dengan desain sampul yang artistik menampilkan motif Jawa tradisional dengan matahari sebagai simbol utama, novel ini adalah karya sastra yang dalam. Mendapat testimoni dari Heru Joni Putra, sastrawan Teroka Institute.",
    "reviews": [
      {
        "user": "Kritikus Sastra",
        "rating": 4,
        "comment": "Karya yang filosofis dan penuh makna."
      },
      {
        "user": "Pembaca",
        "rating": 4,
        "comment": "Novel yang berat tapi menarik untuk direnungkan."
      }
    ]
  },
  {
    "id": 36,
    "name": "Misteri Kampung Hitam",
    "author": "Yovita Siswati",
    "img": "assets/img/44.jpg",
    "genre": "Misteri",
    "rating": 4.4,
    "recent": true,
    "price": 69000,
    "qty": 1,
    "synopsis": "Seri Misteri Favorit! Novel misteri untuk anak yang mengisahkan petualangan dua anak yang mengungkap misteri di sebuah kampung tua. Penuh teka-teki, petunjuk tersembunyi, dan kejutan yang menegangkan.",
    "description": "Dengan ilustrasi sampul yang menarik menampilkan dua anak berlari dari bayangan misterius, buku ini cocok untuk pembaca muda yang menyukai cerita detektif. Yovita Siswati berhasil menciptakan cerita misteri yang seru dan edukatif.",
    "reviews": [
      {
        "user": "Ibu Nina",
        "rating": 5,
        "comment": "Anak saya suka banget! Bikin ketagihan baca."
      },
      {
        "user": "Anak SD",
        "rating": 4,
        "comment": "Seru dan bikin penasaran!"
      }
    ]
  },
  {
    "id": 37,
    "name": "Misteri Rumah Kaliurang",
    "author": "Lindhu Ajz",
    "img": "assets/img/40.jpg",
    "genre": "Misteri",
    "rating": 4.2,
    "recent": true,
    "price": 71000,
    "qty": 1,
    "synopsis": "Novel misteri horor yang mengisahkan tentang rumah tua di Kaliurang yang menyimpan rahasia kelam. Sebuah kisah yang mencekam tentang masa lalu yang kembali menghantui dan kebenaran yang tersembunyi.",
    "description": "Dengan sampul yang gelap dan menakutkan menampilkan rumah tua yang menyeramkan, novel ini adalah bacaan yang pas untuk pecinta horor dan misteri. Berlatar di Jogja, cerita ini menggabungkan unsur lokal dengan ketegangan yang mencekam.",
    "reviews": [
      {
        "user": "Rudi",
        "rating": 4,
        "comment": "Horor lokal yang bagus! Settingnya di Jogja bikin makin relate."
      },
      {
        "user": "Mega",
        "rating": 4,
        "comment": "Cerita yang menegangkan dan penuh misteri."
      }
    ]
  },
  {
    "id": 38,
    "name": "Misteri Kota Penari Topeng",
    "author": "Yovita Siswati",
    "img": "assets/img/42.jpg",
    "genre": "Misteri",
    "rating": 4.3,
    "recent": true,
    "price": 69000,
    "qty": 1,
    "synopsis": "Seri Misteri Favorit! Petualangan dua anak yang mengungkap misteri di sebuah kota dengan tradisi tari topeng. Mereka harus memecahkan teka-teki kuno untuk menyelamatkan kota dari ancaman bahaya.",
    "description": "Dengan ilustrasi sampul yang colorful menampilkan dua anak bersepeda motor melarikan diri dari bayangan misterius, novel ini melanjutkan seri misteri favorit anak. Mengangkat budaya lokal dengan cara yang menarik dan edukatif.",
    "reviews": [
      {
        "user": "Pak Guru",
        "rating": 4,
        "comment": "Bagus untuk mengenalkan budaya lokal sambil membaca cerita seru."
      },
      {
        "user": "Anak SMP",
        "rating": 5,
        "comment": "Lebih seru dari seri sebelumnya!"
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
