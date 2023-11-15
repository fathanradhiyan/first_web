part of 'shared.dart';

class SharedString {
  static const String signIn = "Masuk";
  static const String signOutInfo = "Sign Out";
  static const String password = "Kata Sandi";
  static const String forgotPass = "Lupa kata sandi?";
  static const String userId = "Nama Pengguna";
  static const String email = "Email";
  static const String nik = "NIK";
  static const String token = "Input Token";
  static const String roles = "Role";
  static const String joindate = "Join Date";
  static const String gender = "Gender";
  static const String ticketid = "Ticket ID";
  static const String menu = "Menu";
  static const String aktivitas = "Activity";
  static const String profil = "Profil";
  static const String actResume = "Activity Resume";
  static const String period = "Period";
  static const String openaktivitas = "Select Open Activity";
  static const String pendingactivity = "Activity Pending";
  static const String detailactivity = "Detail Activity";
  static const String doclist = "Document List";
  static const String actOpen = "Activity Open";
  static const String actProject = "Activity By Project";
  static const String actSquad = "Activity By Squad";
  static const String logout = "Logout";
  static const String login = "Login";
  static const String exit = "Exit";
  static const String backButtonMessage = "Press again to exit";
  static const String back = "Kembali";
  static const String fill = "Fill the blank field";
  static const String choose = "Select date or period";
  static const String changepass = "Change Password";
  static const String resetpass = "Reset Password";
  static const String extpass = "Existing Password";
  static const String newpass = "New Password";
  static const String valpass = "Confirm Password";
  static const String squadmember = "Squad Member";
  static const String checkStatusReg = 'Cek Status Pendaftaran';
  static const String open = "Open";
  static const String close = "Close";
  static const String status = "Status";
  static const String aktif = "Aktif";
  static const String tidakaktif = "Tidak Aktif";

//Snackbar Message
  static const String emptyEntry = "Fill all data";
  static const String connectionFailed = "Connection Failed";
  static const String signInFailed = "Sign In Failed";
  static const String tryagain = "Try Again";
  static const String success = "Success";
  static const String failed = "Failed";
  static const String error = "Error, Please Try Again";
  static const String soon = "Coming Soon";
  static const String allow = "Allow Permission";

  //KETERANGAN
  static const String submit = "Submit";
  static const String wrongMessage = "An error occurred while retrieving data";
  static const String reLogin = "Session time out. Please re-login";
  static const String isianwajib = "Data wajib diisi";
  static const String dataKosong = "Data Kosong";

  //STATUS
  static const String STATUS_OK = "OK";
  static const String STATUS_CREATED = "CREATED";

  //ROLECODE
  static const String AMA = "AMA";
  static const String PENYELIA = "APV";
  static const String WAKIL_PEMIMPIN = "VP";
  static const String PEMIMPIN = "GM";
  static const String SUPER_ADMIN = "SAD";
  static const String SUPER_AGEN = "SAG";
  static const String CALON_AGEN = "CAG";
  static const String INPUTER = "INP";

  //LABEL
  static const String idbniagen46 = "ID BNI Agen46";
  static const String namabniagen46 = "Nama BNI Agen46";
  static const String reaktivasi = "Reaktivasi";
  static const String usulan = "Usulan";
  static const String lihatdetail = "Lihat Detail";
  static const String setuju = "Setuju";
  static const String tidaksetuju = "Tidak Setuju";
  static const String usulkan = "Usulkan";
  static const String diusulkan = "Diusulkan";
  static const String ditolak = "Ditolak";
  static const String tutup = "Tutup";
  static const String ya = "Ya";
  static const String tidak = "Tidak";
  static const String simpan = "Simpan";
  static const String ama = "AMA";
  static const String penyelia = "Penyelia";
  static const String wakilpemimpin = "Wakil Pemimpin";
  static const String pemimpin = "Pemimpin";
  static const String revisi = "Revisi";

  //getter
  // static String getStatus({String? status}) {
  //   if (status == "Y") {
  //     return aktif;
  //   } else {
  //     return tidakaktif;
  //   }
  // }

  static String getInitials(String text) {
    String initials = "";
    if (!text.trim().contains(" ")) {
      if (text.length > 2) {
        initials = text.substring(0, 2);
      } else {
        initials = text.substring(0, 1);
      }
    } else {
      List<String> names = text.split(" ");
      for (var i = 0; i < 2; i++) {
        initials += names[i][0];
      }
    }

    return initials;
  }

  static String getGender({String? gender}) {
    if (gender == "M") {
      return "Pria";
    } else if (gender == "") {
      return "-";
    } else {
      return "Wanita";
    }
  }
}
