class Haber {
  Haber(this.imageUrl, this.baslik, this.aciklama);

  String imageUrl;
  String baslik;
  String aciklama;
}

List haberList = [
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "35.767 Başvuru Aldık",
    "Google Oyun ve Uygulama Akademisi 2.yılında 35.767 başvuru aldı! Oyun ve Uygulama Akademisi’ne olan ilginiz için çok teşekkür ederiz.",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/334183932_1278404979739858_177589311238080899_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=L_Qtq_CkDm0AX8saEhj&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzA1MzIxMjM3ODY4MTQ0Mzc1OA%3D%3D.2-ccb7-5&oh=00_AfDtyCgFbV8jtYI_H2-5YSvBxWWxxHSv4FnReIoMRmrhOg&oe=6434A85A&_nc_sid=978cb9",
    "Başlık",
    "Depremlerin ilk gününden beri Akademi ailemizin parçası olan yaklaşık 3000 bursiyer ve mezunumuzun her birinin ve sevdiklerinin can güvenliğinden emin olmak, ihtiyaçlarını öğrenebilmek amacıyla iletişim kanalları oluşturduk. Her birine ulaşmaya çalıştık ve gereken destekleri sağladık.",
  ),
  Haber(
    "https://instagram.fsaw2-2.fna.fbcdn.net/v/t51.2885-15/313210004_458002826430307_6346588841392444224_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fsaw2-2.fna.fbcdn.net&_nc_cat=107&_nc_ohc=8ugp-7SfGlwAX8I-dQ5&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=Mjk1ODk2NjA4NTgwMTUyNTkxMQ%3D%3D.2-ccb7-5&oh=00_AfDn-YcsFMqsQMWKBO-b7zS5g7zdizmmBz4ARFuyFDm-XA&oe=6434ADA7&_nc_sid=6136e7",
    "Başlık",
    "Oyun ve Uygulama Akademisi’nin 2022 dönemi oyun ve uygulama kategorilerinde; oyun alanında birinci olan Artha Game Studious, uygulama alanında birinci olan ScrAppMine ve ve jüri özel ödülünün sahibi olan Paws Game takımlarını tebrik ederiz.",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/309767183_444525250993738_6475304187803620273_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=cQXYT0l5rywAX98Z3vQ&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk0MDkwODEwMjA5OTc4NTAwNQ%3D%3D.2-ccb7-5&oh=00_AfCpxTXP-gan6Acw-7u4CUflwWhhiycK9UcqO0LX4PEJKw&oe=6435CFFE&_nc_sid=978cb9",
    "Başlık",
    "Oyun ve Uygulama Akademisi danışmanımız @atilsamancioglu ve bursiyerlerimiz ile Akademi'de Bootcamp, GameJam, AppJam, Github ve çok daha fazlasını konuşmak için instagram canlı yayınında bir araya geliyoruz!",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "Başlık",
    "Açıklama",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "Başlık",
    "Açıklama",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "Başlık",
    "Açıklama",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "Başlık",
    "Açıklama",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "Başlık",
    "Açıklama",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "Başlık",
    "Açıklama",
  ),
];
