void main(List<String> arguments) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // Membuat dua set kosong
  var names1 = <String>{};
  Set<String> names2 = {}; // Deklarasi set juga

  // Menambahkan elemen nama dan NIM dengan .add() dan .addAll()
  names1.add('Angelia Anna Putri R');
  names2.addAll({'Angelia Anna Putri R', '2241760016'});

  // Mencetak semua set
  print(halogens);
  print(names1);
  print(names2);
}
