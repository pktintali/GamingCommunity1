import 'package:indian_gaming_community/Streamers.dart';
Streamers streamers = Streamers();
class JoinSocial {
  String joinYoutube(String name, String type) {
    if (type == 'channel') {
      if (name == 'DYNAMO GAMING') {
        return '${streamers.topStreamersUrl[0]}';
      }
      else if (name == 'MORTAL')
        return '${streamers.topStreamersUrl[1]}';
      else if (name == 'CarryisLive')
        return '${streamers.topStreamersUrl[2]}';
      else if (name == 'KRONTEN GAMING')
        return '${streamers.topStreamersUrl[3]}';
      else if (name == 'RAWKNEE GAMES')
        return '${streamers.topStreamersUrl[4]}';
      else if (name == 'Gareebooo')
        return '${streamers.topStreamersUrl[5]}';
      else if (name == 'Alpha Clasher')
        return '${streamers.topStreamersUrl[6]}';
      else if (name == 'Cosmic YT')
        return '${streamers.topStreamersUrl[7]}';
      //Category Changed
      else if (name == 'Gaming Guru')
        return '${streamers.otherBestStreamerUrl[0]}';
      else if (name == 'GtxPreet')
        return '${streamers.otherBestStreamerUrl[1]}';
      else if (name == 'shreeman legend')
        return '${streamers.otherBestStreamerUrl[2]}';
      else if (name == 'Rog Stream')
        return '${streamers.otherBestStreamerUrl[3]}';
      else if (name == 'MDisCrazY')
        return '${streamers.otherBestStreamerUrl[4]}';
      else if (name == 'RON GAMING')
        return '${streamers.otherBestStreamerUrl[5]}';
      else if (name == 'sc0ut')
        return '${streamers.otherBestStreamerUrl[6]}';
      else if (name == 'HYDRA BTS')
        return '${streamers.otherBestStreamerUrl[7]}';
      else if (name == 'Hind gaming')
        return '${streamers.otherBestStreamerUrl[8]}';
      else if (name == 'Novaking')
        return '${streamers.otherBestStreamerUrl[9]}';
      else if (name == 'Octo Owais')
        return '${streamers.otherBestStreamerUrl[10]}';
      else if (name == 'Emperor Plays')
        return '${streamers.otherBestStreamerUrl[11]}';
      //Category Changed
      else if (name == 'JoKerFTW')
        return '${streamers.growingStreamerUrl[0]}';
      else if (name == 'Potato')
        return '${streamers.growingStreamerUrl[1]}';
      else if (name == 'Daddy Cool')
        return '${streamers.growingStreamerUrl[2]}';
      else if (name == 'Aur karo Engineering')
        return '${streamers.growingStreamerUrl[3]}';
      else if (name == 'RaV3n')
        return '${streamers.growingStreamerUrl[4]}';
      else if (name == 'SOUL VipeR')
        return '${streamers.growingStreamerUrl[5]}';
      else if (name == 'Arthur')
        return '${streamers.growingStreamerUrl[6]}';
      else if (name == 'Maxmin Gaming')
        return '${streamers.growingStreamerUrl[7]}';
      else if (name == 'Your KARMA')
        return '${streamers.growingStreamerUrl[8]}';
      else if (name == 'HyperKIDGaming')
        return '${streamers.growingStreamerUrl[9]}';
      else if (name == 'Harry Got it!!!')
        return '${streamers.growingStreamerUrl[10]}';
      else if (name == 'NSkiGaminG')
        return '${streamers.growingStreamerUrl[11]}';
      else if (name == 'RakaZone Gaming')
        return '${streamers.growingStreamerUrl[12]}';
      else if (name == 'Beast Gaming')
        return '${streamers.growingStreamerUrl[13]}';
      else if (name == 'Nucleya OP')
        return '${streamers.growingStreamerUrl[14]}';
      else if (name == 'Rowdy Gaming')
        return '${streamers.growingStreamerUrl[15]}';
      //Category Changed
      else if (name == '8bit_thug')
        return '${streamers.casterUrl[0]}';
      else if (name == 'K18 gaming')
        return '${streamers.casterUrl[1]}';
      else
        return 'http://m.youtube.com';
    }


    else if (type == 'join') {
      if (name == 'DYNAMO GAMING') {
        return '${streamers.topStreamersUrl[0]}/join';
      }
      else if (name == 'MORTAL')
        return '${streamers.topStreamersUrl[1]}/join';
      else if (name == 'CarryisLive')
        return '${streamers.topStreamersUrl[2]}/join';
      else if (name == 'KRONTEN GAMING')
        return '${streamers.topStreamersUrl[3]}/join';
      else if (name == 'RAWKNEE GAMES')
        return '${streamers.topStreamersUrl[4]}/join';
      else if (name == 'Gareebooo')
        return '${streamers.topStreamersUrl[5]}/join';
      else if (name == 'Alpha Clasher')
        return '${streamers.topStreamersUrl[6]}/join';
      else if (name == 'Cosmic YT')
        return '${streamers.topStreamersUrl[7]}/join';
      //Category Changed
      else if (name == 'Gaming Guru')
        return '${streamers.otherBestStreamerUrl[0]}/join';
      else if (name == 'GtxPreet')
        return '${streamers.otherBestStreamerUrl[1]}/join';
      else if (name == 'shreeman legend')
        return '${streamers.otherBestStreamerUrl[2]}/join';
      else if (name == 'Rog Stream')
        return '${streamers.otherBestStreamerUrl[3]}/join';
      else if (name == 'MDisCrazY')
        return '${streamers.otherBestStreamerUrl[4]}/join';
      else if (name == 'RON GAMING')
        return '${streamers.otherBestStreamerUrl[5]}/join';
      else if (name == 'sc0ut')
        return '${streamers.otherBestStreamerUrl[6]}/join';
      else if (name == 'HYDRA BTS')
        return '${streamers.otherBestStreamerUrl[7]}/join';
      else if (name == 'Hind gaming')
        return '${streamers.otherBestStreamerUrl[8]}/join';
      else if (name == 'Novaking')
        return '${streamers.otherBestStreamerUrl[9]}/join';
      else if (name == 'Octo Owais')
        return '${streamers.otherBestStreamerUrl[10]}/join';
      else if (name == 'Emperor Plays')
        return '${streamers.otherBestStreamerUrl[11]}/join';
      //Category Changed
      else if (name == 'JoKerFTW')
        return '${streamers.growingStreamerUrl[0]}/join';
      else if (name == 'Potato')
        return '${streamers.growingStreamerUrl[1]}/join';
      else if (name == 'Daddy Cool')
        return '${streamers.growingStreamerUrl[2]}/join';
      else if (name == 'Aur karo Engineering')
        return '${streamers.growingStreamerUrl[3]}/join';
      else if (name == 'RaV3n')
        return '${streamers.growingStreamerUrl[4]}/join';
      else if (name == 'SOUL VipeR')
        return '${streamers.growingStreamerUrl[5]}/join';
      else if (name == 'Arthur')
        return '${streamers.growingStreamerUrl[6]}/join';
      else if (name == 'Maxmin Gaming')
        return '${streamers.growingStreamerUrl[7]}/join';
      else if (name == 'Your KARMA')
        return '${streamers.growingStreamerUrl[8]}/join';
      else if (name == 'HyperKIDGaming')
        return '${streamers.growingStreamerUrl[9]}/join';
      else if (name == 'Harry Got it!!!')
        return '${streamers.growingStreamerUrl[10]}/join';
      else if (name == 'NSkiGaminG')
        return '${streamers.growingStreamerUrl[11]}/join';
      else if (name == 'RakaZone Gaming')
        return '${streamers.growingStreamerUrl[12]}/join';
      else if (name == 'Beast Gaming')
        return '${streamers.growingStreamerUrl[13]}/join';
      else if (name == 'Nucleya OP')
        return '${streamers.growingStreamerUrl[14]}/join';
      else if (name == 'Rowdy Gaming')
        return '${streamers.growingStreamerUrl[15]}/join';
      //Category Changed
      else if (name == '8bit_thug')
        return '${streamers.casterUrl[0]}/join';
      else if (name == 'K18 gaming')
        return '${streamers.casterUrl[1]}/join';
      else
        return 'https//m.youtube.com';
    }
    else
      return 'https://m.youtube.com';
  }

  String joinInsta(String name){
    if (name == 'DYNAMO GAMING') {
      return '${streamers.topStreamerInsta[0]}';
    }
    else if (name == 'MORTAL')
      return '${streamers.topStreamerInsta[1]}';
    else if (name == 'CarryisLive')
      return '${streamers.topStreamerInsta[2]}';
    else if (name == 'KRONTEN GAMING')
      return '${streamers.topStreamerInsta[3]}';
    else if (name == 'RAWKNEE GAMES')
      return '${streamers.topStreamerInsta[4]}';
    else if (name == 'Gareebooo')
      return '${streamers.topStreamerInsta[5]}';
    else if (name == 'Alpha Clasher')
      return '${streamers.topStreamerInsta[6]}';
    else if (name == 'Cosmic YT')
      return '${streamers.topStreamerInsta[7]}';
    //Category Changed
    else if (name == 'Gaming Guru')
      return '${streamers.otherBestStreamerInsta[0]}';
    else if (name == 'GtxPreet')
      return '${streamers.otherBestStreamerInsta[1]}';
    else if (name == 'shreeman legend')
      return '${streamers.otherBestStreamerInsta[2]}';
    else if (name == 'Rog Stream')
      return '${streamers.otherBestStreamerInsta[3]}';
    else if (name == 'MDisCrazY')
      return '${streamers.otherBestStreamerInsta[4]}';
    else if (name == 'RON GAMING')
      return '${streamers.otherBestStreamerInsta[5]}';
    else if (name == 'sc0ut')
      return '${streamers.otherBestStreamerInsta[6]}';
    else if (name == 'HYDRA BTS')
      return '${streamers.otherBestStreamerInsta[7]}';
    else if (name == 'Hind gaming')
      return '${streamers.otherBestStreamerInsta[8]}';
    else if (name == 'Novaking')
      return '${streamers.otherBestStreamerInsta[9]}';
    else if (name == 'Octo Owais')
      return '${streamers.otherBestStreamerInsta[10]}';
    else if (name == 'Emperor Plays')
      return '${streamers.otherBestStreamerInsta[11]}';
    else return
        'void';
  }

  String joinFb(String name) {
    if (name == 'DYNAMO GAMING') {
      return '${streamers.topStreamerFb[0]}';
    }
    else if (name == 'MORTAL')
      return '${streamers.topStreamerFb[1]}';
    else if (name == 'CarryisLive')
      return '${streamers.topStreamerFb[2]}';
    else if (name == 'KRONTEN GAMING')
      return '${streamers.topStreamerFb[3]}';
    else if (name == 'RAWKNEE GAMES')
      return '${streamers.topStreamerFb[4]}';
    else if (name == 'Gareebooo')
      return '${streamers.topStreamerFb[5]}';
    else if (name == 'Alpha Clasher')
      return '${streamers.topStreamerFb[6]}';
    else if (name == 'Cosmic YT')
      return '${streamers.topStreamerFb[7]}';
    else return
        'void';
  }


  String joinTwit(String name){
    if (name == 'DYNAMO GAMING') {
      return '${streamers.topStreamerTwitter[0]}';
    }
    else if (name == 'MORTAL')
      return '${streamers.topStreamerTwitter[1]}';
    else if (name == 'CarryisLive')
      return '${streamers.topStreamerTwitter[2]}';
    else if (name == 'KRONTEN GAMING')
      return '${streamers.topStreamerTwitter[3]}';
    else if (name == 'RAWKNEE GAMES')
      return '${streamers.topStreamerTwitter[4]}';
    else if (name == 'Gareebooo')
      return '${streamers.topStreamerTwitter[5]}';
    else if (name == 'Alpha Clasher')
      return '${streamers.topStreamerTwitter[6]}';
    else if (name == 'Cosmic YT')
      return '${streamers.topStreamerTwitter[7]}';
    //Category Changed
    else if (name == 'Gaming Guru')
      return '${streamers.otherBestStreamerTwitter[0]}';
    else if (name == 'GtxPreet')
      return '${streamers.otherBestStreamerTwitter[1]}';
    else if (name == 'shreeman legend')
      return '${streamers.otherBestStreamerTwitter[2]}';
    else if (name == 'Rog Stream')
      return '${streamers.otherBestStreamerTwitter[3]}';
    else if (name == 'MDisCrazY')
      return '${streamers.otherBestStreamerTwitter[4]}';
    else if (name == 'RON GAMING')
      return '${streamers.otherBestStreamerTwitter[5]}';
    else if (name == 'sc0ut')
      return '${streamers.otherBestStreamerTwitter[6]}';
    else if (name == 'HYDRA BTS')
      return '${streamers.otherBestStreamerTwitter[7]}';
    else if (name == 'Hind gaming')
      return '${streamers.otherBestStreamerTwitter[8]}';
    else if (name == 'Novaking')
      return '${streamers.otherBestStreamerTwitter[9]}';
    else if (name == 'Octo Owais')
      return '${streamers.otherBestStreamerTwitter[10]}';
    else if (name == 'Emperor Plays')
      return '${streamers.otherBestStreamerTwitter[11]}';
    else return
        'void';
  }

  String joinDiscord(String name){
    if (name == 'DYNAMO GAMING') {
      return '${streamers.topStreamerDiscord[0]}';
    }
    else if (name == 'MORTAL')
      return '${streamers.topStreamerDiscord[1]}';
    else if (name == 'CarryisLive')
      return '${streamers.topStreamerDiscord[2]}';
    else if (name == 'KRONTEN GAMING')
      return '${streamers.topStreamerDiscord[3]}';
    else if (name == 'RAWKNEE GAMES')
      return '${streamers.topStreamerDiscord[4]}';
    else if (name == 'Gareebooo')
      return '${streamers.topStreamerDiscord[5]}';
    else if (name == 'Alpha Clasher')
      return '${streamers.topStreamerDiscord[6]}';
    else if (name == 'Cosmic YT')
      return '${streamers.topStreamerDiscord[7]}';
    //Category Changed
    else if (name == 'Gaming Guru')
      return '${streamers.otherBestStreamerDiscord[0]}';
    else if (name == 'GtxPreet')
      return '${streamers.otherBestStreamerDiscord[1]}';
    else if (name == 'shreeman legend')
      return '${streamers.otherBestStreamerDiscord[2]}';
    else if (name == 'Rog Stream')
      return '${streamers.otherBestStreamerDiscord[3]}';
    else if (name == 'MDisCrazY')
      return '${streamers.otherBestStreamerDiscord[4]}';
    else if (name == 'RON GAMING')
      return '${streamers.otherBestStreamerDiscord[5]}';
    else if (name == 'sc0ut')
      return '${streamers.otherBestStreamerDiscord[6]}';
    else if (name == 'HYDRA BTS')
      return '${streamers.otherBestStreamerDiscord[7]}';
    else if (name == 'Hind gaming')
      return '${streamers.otherBestStreamerDiscord[8]}';
    else if (name == 'Novaking')
      return '${streamers.otherBestStreamerDiscord[9]}';
    else if (name == 'Octo Owais')
      return '${streamers.otherBestStreamerDiscord[10]}';
    else if (name == 'Emperor Plays')
      return '${streamers.otherBestStreamerDiscord[11]}';
    //Category Changed
    else if (name == 'JoKerFTW')
      return '${streamers.growingStreamerDiscord[0]}';
    else if (name == 'Potato')
      return '${streamers.growingStreamerDiscord[1]}';
    else if (name == 'Daddy Cool')
      return '${streamers.growingStreamerDiscord[2]}';
    else if (name == 'Aur karo Engineering')
      return '${streamers.growingStreamerDiscord[3]}';
    else if (name == 'RaV3n')
      return '${streamers.growingStreamerDiscord[4]}';
    else if (name == 'SOUL VipeR')
      return '${streamers.growingStreamerDiscord[5]}';
    else if (name == 'Arthur')
      return '${streamers.growingStreamerDiscord[6]}';
    else if (name == 'Maxmin Gaming')
      return '${streamers.growingStreamerDiscord[7]}';
    else if (name == 'Your KARMA')
      return '${streamers.growingStreamerDiscord[8]}';
    else if (name == 'HyperKIDGaming')
      return '${streamers.growingStreamerDiscord[9]}';
    else if (name == 'Harry Got it!!!')
      return '${streamers.growingStreamerDiscord[10]}';
    else if (name == 'NSkiGaminG')
      return '${streamers.growingStreamerDiscord[11]}';
    else if (name == 'RakaZone Gaming')
      return '${streamers.growingStreamerDiscord[12]}';
    else if (name == 'Beast Gaming')
      return '${streamers.growingStreamerDiscord[13]}';
    else if (name == 'Nucleya OP')
      return '${streamers.growingStreamerDiscord[14]}';
    else if (name == 'Rowdy Gaming')
      return '${streamers.growingStreamerDiscord[15]}';
    //Category Changed
    else if (name == '8bit_thug')
      return '${streamers.casterDiscord[0]}';
    else if (name == 'K18 gaming')
      return '${streamers.casterDiscord[1]}';
    else
      return 'void';
  }

  String liveSub(String name){
    if (name == 'DYNAMO GAMING') {
      return '${streamers.topStreamersUrl[0]}';
    }
    else if (name == 'MORTAL')
      return '${streamers.topStreamersUrl[1]}';
    else if (name == 'CarryisLive')
      return '${streamers.topStreamersUrl[2]}';
    else if (name == 'KRONTEN GAMING')
      return '${streamers.topStreamersUrl[3]}';
    else if (name == 'RAWKNEE GAMES')
      return '${streamers.topStreamersUrl[4]}';
    else if (name == 'Gareebooo')
      return '${streamers.topStreamersUrl[5]}';
    else if (name == 'Alpha Clasher')
      return '${streamers.topStreamersUrl[6]}';
    else if (name == 'Cosmic YT')
      return '${streamers.topStreamersUrl[7]}';
    //Category Changed
    else if (name == 'Gaming Guru')
      return '${streamers.otherBestStreamerUrl[0]}';
    else if (name == 'GtxPreet')
      return '${streamers.otherBestStreamerUrl[1]}';
    else if (name == 'shreeman legend')
      return '${streamers.otherBestStreamerUrl[2]}';
    else if (name == 'Rog Stream')
      return '${streamers.otherBestStreamerUrl[3]}';
    else if (name == 'MDisCrazY')
      return '${streamers.otherBestStreamerUrl[4]}';
    else if (name == 'RON GAMING')
      return '${streamers.otherBestStreamerUrl[5]}';
    else if (name == 'sc0ut')
      return '${streamers.otherBestStreamerUrl[6]}';
    else if (name == 'HYDRA BTS')
      return '${streamers.otherBestStreamerUrl[7]}';
    else if (name == 'Hind gaming')
      return '${streamers.otherBestStreamerUrl[8]}';
    else if (name == 'Novaking')
      return '${streamers.otherBestStreamerUrl[9]}';
    else if (name == 'Octo Owais')
      return '${streamers.otherBestStreamerUrl[10]}';
    else if (name == 'Emperor Plays')
      return '${streamers.otherBestStreamerUrl[11]}';
    //Category Changed
    else if (name == 'JoKerFTW')
      return '${streamers.growingStreamerUrl[0]}';
    else if (name == 'Potato')
      return '${streamers.growingStreamerUrl[1]}';
    else if (name == 'Daddy Cool')
      return '${streamers.growingStreamerUrl[2]}';
    else if (name == 'Aur karo Engineering')
      return '${streamers.growingStreamerUrl[3]}';
    else if (name == 'RaV3n')
      return '${streamers.growingStreamerUrl[4]}';
    else if (name == 'SOUL VipeR')
      return '${streamers.growingStreamerUrl[5]}';
    else if (name == 'Arthur')
      return '${streamers.growingStreamerUrl[6]}';
    else if (name == 'Maxmin Gaming')
      return '${streamers.growingStreamerUrl[7]}';
    else if (name == 'Your KARMA')
      return '${streamers.growingStreamerUrl[8]}';
    else if (name == 'HyperKIDGaming')
      return '${streamers.growingStreamerUrl[9]}';
    else if (name == 'Harry Got it!!!')
      return '${streamers.growingStreamerUrl[10]}';
    else if (name == 'NSkiGaminG')
      return '${streamers.growingStreamerUrl[11]}';
    else if (name == 'RakaZone Gaming')
      return '${streamers.growingStreamerUrl[12]}';
    else if (name == 'Beast Gaming')
      return '${streamers.growingStreamerUrl[13]}';
    else if (name == 'Nucleya OP')
      return '${streamers.growingStreamerUrl[14]}';
    else if (name == 'Rowdy Gaming')
      return '${streamers.growingStreamerUrl[15]}';
    //Category Changed
    else if (name == '8bit_thug')
      return '${streamers.casterUrl[0]}';
    else if (name == 'K18 gaming')
      return '${streamers.casterUrl[1]}';
    else
      return 'void';
  }

}