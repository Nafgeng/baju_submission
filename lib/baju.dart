class TokoBaju {
  late String name;
  late String description;
  late String imageAsset;
  late String harga;
  late String kualitas;
  late String bahan;
  late String produk;
  late List<String> imageUrl;

  TokoBaju({
    required this.name,
    required this.description,
    required this.imageAsset,
    required this.harga,
    required this.bahan,
    required this.produk,
    required this.kualitas,
    required this.imageUrl
});
}

var TokoBajuList = [
  TokoBaju(
      name: 'Greenlight',
      description: 'UKURAN : S M L XL \nLingkar badan : 98, 101, 104, 107 \nPanjang badan : 69, 71, 73, 73 \nWarna yang terlihat pada foto produk mungkin tidak 100% sama dengan produk aslinya, dikarenakan faktor cahaya pada pengambilan gambar ataupun pada kondisi gadget yang digunakan untuk melihat gambar.',
      imageAsset: 'image/greenlight.png',
      imageUrl:[
        'https://s1.bukalapak.com/img/12469173911/large/data.png',
        'https://id-test-11.slatic.net/p/09d98d8f97c8ea60faa7d852919ffbf0.jpg',
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/8/30/0e0fe043-8a61-4612-b412-4a7343a4ba66.jpg',
        'https://id-live-05.slatic.net/p/0180d06c7fd8c22c468e667f31eb1b5e.jpg_720x720q80.jpg',
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/9/6/18535225-8451-43b5-8777-49a2340f8cd7.jpg'
      ],
     harga: 'Rp 120.000',
     kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Bandung',
  ),

  TokoBaju(
      name: 'Uniqlo',
      description: 'Terbuat dari 100% Supima® cotton, dengan serat yang panjang dan kilau elegan.',
      imageAsset: 'image/uniqlo.png',
      imageUrl:[
        'https://s4.bukalapak.com/img/4265258813/large/kaos_uniqlo_lego_men_t_shirt_original_space.jpg',
        'https://media.karousell.com/media/photos/products/2019/04/05/kaos_uniqlo_basic_kantong_1554474605_bee98a3a_progressive.jpg',
        'https://id-live-01.slatic.net/p/c157a239b08ec8f4421363403f3d06e9.jpg',
        'https://statics.indozone.news/content/2021/07/01/EnsMAj7/uniqlo-kembali-berkolaborasi-dengan-kaws-luncurkan-koleksi-t-shirt-terbaru90_700.jpg',
        'https://images.tokopedia.net/img/cache/500-square/product-1/2019/10/8/71516770/71516770_f46896b7-dcb6-458c-b862-e0909ff725dd_610_610.jpg'
      ],
     harga: 'Rp 135.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Jepang',
  ),

  TokoBaju(
      name: 'H&M',
      description: 'PREMIUM QUALITY Kaus dari katun jersi premium.',
      imageAsset: 'image/hm.png',
      imageUrl:[
        'https://s4.bukalapak.com/img/91850763732/large/data.jpeg',
        'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/0050b2104c72dfaa8012574a80ac22c6ed2d386e_xxl-1.jpg',
        'https://s3.bukalapak.com/img/81607239252/s-330-330/data.jpeg',
        'https://hm-media-prod.s3.amazonaws.com/pub/media/catalog/product/medium/d0b34f89ec232ab368f1cb02858948a21a197d3b_xxl-1.jpg',
        'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/431abf659079904b36c08eb73bfcf117b8116515_xxl-1.jpg'
      ],
     harga: 'Rp 200.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Swedia',
  ),

  TokoBaju(
      name: 'Gozeal',
      description: 'Kaos Gozeal merupakan kaos yang dibuat dengan menggunakan bahan katun berkualitas yang cocok untuk dipakai di negara tropis serta perpaduan dengan design sablon yang up to date sehingga menghasilkan produk yang terasa nyaman dan cocok dipakai untuk keseharianmu.',
      imageAsset: 'image/gozeal.png',
      imageUrl:[
        'https://id-test-11.slatic.net/p/c4482e701e93f855ca3776264455b797.jpg',
        'https://images.tokopedia.net/img/cache/500-square/product-1/2019/5/17/2346416/2346416_697df16a-a792-4f92-9a91-d1113ff0a3f0_1560_1560.jpg',
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/10/25/3269e28a-42b3-4e4e-958e-55597e6b7cb3.jpg',
        'https://dbs9nopbkp043.cloudfront.net/images/products/f9d14ff11d6e4e8257c5447411a3cb8f_1645418166731_resized1024.jpeg',
        'https://dbs9nopbkp043.cloudfront.net/images/products/6f117d35b5f2ffee4fabf078e00c6163_1644810480496_resized1024.jpeg'
      ],
     harga: 'Rp 125.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Indonesia',
  ),

  TokoBaju(
      name: 'Nevada',
      description: 'Hadirkan pesona gaya kasual Anda dengan koleksi pakaian terbaru dari brand Nevada. Sentuhan desain kasual yang simpel dengan tampilan yang modis. Hadir dalam balutan material berkualitas memberikan kenyamanan di setiap aktivitas.',
      imageAsset: 'image/nevada.png',
      imageUrl:[
        'https://images.tokopedia.net/img/cache/500-square/product-1/2018/9/6/3942048/3942048_393490eb-bde5-4e73-8bcf-979ac5830f43_1074_1074.jpg',
        'https://s4.bukalapak.com/img/979964304/large/Kaos_Nevada_Original_Murah.jpg',
        'https://media.karousell.com/media/photos/products/2017/09/21/kaos_nevada_1505979222_9f211744.jpg',
        'https://s2.bukalapak.com/img/7996324932/large/kaos_nevada___kaos_nevada_label_baru_merk_baru___kaos_nevada.jpg',
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/11/20/174332c4-00bd-46e1-9644-90abf7242452.jpg'
      ],
     harga: 'Rp 75.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Indonesia',
  ),

  TokoBaju(
      name: 'Pull & Bear',
      description: 'Kaus katun lengan pendek dengan ilustrasi dan slogan di depan.',
      imageAsset: 'image/pullbear.png',
      imageUrl:[
        'https://img.biggo.com.tw/ssXi9URP22JicL3ajrUrlA_2Zc0kaRWipobxA8DGl8oU/https://id-live-01.slatic.net/p/f7dea4cf071ac4c82786d7fb1b484c0a.jpg',
        'https://s2.bukalapak.com/img/24588402472/s-330-330/data.jpeg',
        'https://s2.bukalapak.com/img/25089275352/s-330-330/data.jpeg',
        'https://lzd-img-global.slatic.net/g/p/c80911a2ed28f0620c04014fad7237b5.jpg_200x200q80.jpg',
        'https://s2.bukalapak.com/img/79941349672/s-330-330/data.jpeg'
      ],
    harga: 'Rp 250.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Spanyol',
  ),

  TokoBaju(
      name: '3Second',
      description: 'UKURAN : S M L XL\nLingkar badan : 99 103 107 111\nPanjang badan : 70 72 72 74\nWarna yang terlihat pada foto produk mungkin tidak 100% sama dengan produk aslinya, dikarenakan faktor cahaya pada pengambilan gambar ataupun pada kondisi gadget yang digunakan untuk melihat gambar.',
      imageAsset: 'image/tsecond.png',
      imageUrl: [
        'https://images.tokopedia.net/img/cache/500-square/product-1/2019/7/28/4415400/4415400_5af9aa9d-7c73-4a6c-b638-cdefe01b396f_1224_1224.jpg',
        'https://id-live-05.slatic.net/p/24669f9a4d9de90e36c9fb55b78c8ee0.jpg_720x720q80.jpg',
        'https://images.tokopedia.net/img/cache/500-square/product-1/2020/3/30/759689697/759689697_7f73c7f9-3eec-4e11-965c-e3e4daf787e8_640_640.jpg',
        'https://s3.bukalapak.com/img/81556926472/s-330-330/data.jpeg',
        'https://id-live-05.slatic.net/p/cf0da269d9ba8190debd830fe434b99e.jpg_720x720q80.jpg'
      ],
     harga: 'Rp 135.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Bandung',
  ),

  TokoBaju(
      name: 'Bloods',
      description: 'Varian T-Shirt membuat penampilan jadi keren, tapi juga memberi kesan misterius.\nModel ini membuatmu tampil beda dari biasanya. Design yang menarik tentunya membuat siapapun jadi lebih percaya diri.\nDipadukan dengan material terbaik sehingga terasa nyaman ketika dipakai kapanpun dan dimanapun.',
      imageAsset: 'image/bloods.png',
      imageUrl: [
        'https://images.tokopedia.net/img/cache/500-square/product-1/2020/6/17/8832125/8832125_7bb94e50-84d9-4e1d-9d14-d090a1f3e5e3_651_651.jpg',
        'https://media.karousell.com/media/photos/products/2020/6/19/kaos_distro_bloods_1592542492_980f06e5_progressive.jpg',
        'https://images.tokopedia.net/img/cache/500-square/product-1/2020/6/17/8832125/8832125_1463dbaf-7164-450c-b9da-bea595d3a92c_634_634.jpg',
        'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3QxOS8zMjUvMzQ1MTg3NjMzOC8xMDU5ODAvZjBiNGQxZTQvNWY4ZmE0ZTlONzBhYTM3M2Y.jpg',
        'https://id.360buyimg.com/Indonesia/s880x0_/amZzL3Q4Mi81My8yMjQ5Njk4MzA4LzkxNzQ0LzYxYWNkZTc5LzVmOGZhNGU1TjA3YjYwNmZi.jpg'
      ],
    harga: 'Rp 125.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Bandung',
  ),

  TokoBaju(
      name: 'Wadezig',
      description: 'irt dengan lengan pendek dan print grafis.\nPersamaan warna foto katalog dengan produk asli mencapai 98%. Efek cahaya, kecerahan, kerapatan, dan resolusi layar memungkinkan terjadinya distorsi warna.',
      imageAsset: 'image/wadezig.png',
      imageUrl: [
        'https://id-live-05.slatic.net/p/af821caf596a728ce22ab3e70ffca992.jpg_720x720q80.jpg',
        'https://id-live-05.slatic.net/p/5e12f65a23e85e4c817db9077c8d2823.jpg_720x720q80.jpg',
        'https://s0.bukalapak.com/img/58650833832/large/data.jpeg',
        'https://s3.bukalapak.com/img/3354240025/s-194-194/BAJU_KAOS_DISTRO_MURAH_WADEZIG.jpg',
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/7/31/0ee67ade-9bc6-4974-ad13-d0a1b248b3eb.jpg'
        ],
       harga: 'Rp 115.000',
      kualitas: 'Good Quality',
      bahan: '100% Katun',
      produk: 'Bandung'
  ),

  TokoBaju(
      name: 'Moutley',
      description: 'UKURAN : S M L XL\nLingkar badan 101 104 107 110\nPanjang Badan 71 73 75 75\nWarna yang terlihat pada foto produk mungkin tidak 100% sama dengan produk aslinya, dikarenakan faktor cahaya pada pengambilan gambar ataupun pada kondisi gadget yang digunakan untuk melihat gambar.',
      imageAsset: 'image/moutley.png',
      imageUrl: [
        'https://s1.bukalapak.com/img/14094055621/large/data.png',
        'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/4/24/9069f558-05b0-4b29-88cc-17dd3461eddc.jpg',
        'https://s4.bukalapak.com/img/9130536062/large/Kaos_Moutley_Original_Rs_206.jpg',
        'https://images.tokopedia.net/img/cache/500-square/product-1/2018/10/2/4208877/4208877_dad04cbd-165f-4d0a-b4f2-35fc650dc8b8_640_640.jpg',
        'https://images.tokopedia.net/img/cache/500-square/product-1/2018/9/8/33610336/33610336_d3e71cf6-ef57-4057-b160-f9d3c74aa26d_1000_1000.jpg'
      ],
     harga: 'Rp 155.000',
    kualitas: 'Good Quality',
    bahan: '100% Katun',
    produk: 'Indonesia',
  ),
];

late final List<String> imglist = [
  'image/blba.jpeg',
  'image/glba.jpeg',
  'image/hmba.jpeg',
  'image/mlba.jpeg',
  'image/ndba.jpeg',
  'image/pbba.jpeg',
  'image/tsba.jpeg',
  'image/wdba.jpeg',
  'image/uqba.jpeg'
];