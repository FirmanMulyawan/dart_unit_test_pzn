// ============ Mock Object
// - saat kita membuat unit test, kadang tidak semua object bisa kita test
// - contoh, misal kita memiliki object yang harus mengirim API request ke payment gateway atau sistem lain yang diluar kontrol kita
// - pada kasus seperti ini, kita tidak bisa memaksakan untuk membuat unit test yang mengirim request ke sistem lain, karena jika kita paksakan, 
//   bisa jadi nanti hasil unit testnya tidak konsisten
// - pada kasus seperti ini, kita bisa menggunakan konsep bernama mock object, yaitu membuat object tiruan yang bisa kita atur tingkah lakunya agar sesuai dengan yang kita inginkan


// ============ Contoh kasus
// - sebelum belajar mock object, sekarang kita akan coba buat contoh kasus, misal kita memiliki class dengan nama BookService dan BookRepository
// - BookRepository merupakan class yang berisikan kode untuk memanipulasi data book ke dalam sistem lain, misal database atau API lain
// - BookService merupakan class yang berisikan kode untuk business logic aplikasi kita
// - BookService memiliki method yang bisa digunakan untuk membuat Book, mengubah Book, mengambil Book dan menghapus Book

