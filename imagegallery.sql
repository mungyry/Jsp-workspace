CREATE DATABASE  IF NOT EXISTS webshop
DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE webshop; /* 더블클릭한 효과, 더블클릭을 해야 사용 가능함*/

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int NOT NULL,
  `stem` varchar(45) NOT NULL,
  `attribution_url` varchar(60) NOT NULL,
  `attribution_name` varchar(45) NOT NULL,
  `image_extension` varchar(5) NOT NULL,
  `rankings` int DEFAULT '0',
  `average_ranking` float DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `images` VALUES (0,'cat','http://www.flickr.com/photos/danseprofane/','cat\'s_101','jpg',3,3),(1,'dog','http://www.flickr.com/photos/laserstars/','jpctalbot','jpg',3,3),(2,'chair','http://www.flickr.com/photos/haldanemartin/','HALDANE MARTIN','jpg',3,3),(3,'money','http://www.flickr.com/photos/epsos/','epSos.de','jpg',3,3),(4,'apple','http://www.flickr.com/photos/imaffo/','iMaffo','jpg',3,3),(5,'table','http://www.flickr.com/photos/starckting/','Starck Ting','jpg',3,3),(6,'water','http://www.flickr.com/photos/99624358@N00/','halseike','jpg',3,3),(7,'food','http://www.flickr.com/photos/celesteh/','celesteh','jpg',3,3),(8,'house','http://www.flickr.com/photos/jwthompson2/','james.thompson','jpg',3,3),(9,'glass','http://www.flickr.com/photos/mabray/','SmartGoat','jpg',3,3),(10,'man','http://www.flickr.com/photos/mcaven/','Michael CavÃ©n','jpg',3,3),(11,'woman','http://www.flickr.com/photos/epsos/','epSos.de','jpg',3,3),(12,'orangefruit','http://www.flickr.com/photos/the_ewan/','The Ewan','jpg',3,3),(13,'train','http://www.flickr.com/photos/bods/','Bods','jpg',3,3),(14,'trainstation','http://www.flickr.com/photos/ralphman/','Ralphman','jpg',3,3),(15,'road','http://www.flickr.com/photos/heypaul/','Hey Paul','jpg',3,3),(16,'tree','http://www.flickr.com/photos/subraytan/','Andypiper','jpg',3,3),(17,'ticket','http://www.flickr.com/photos/sludgeulper/','sludgegulper','jpg',3,3),(18,'car','http://www.flickr.com/photos/turtlemom_nancy/','turtlemom4bacon','jpg',3,3),(19,'aeroplane','http://www.flickr.com/photos/puddy73/','puddy_uk','jpg',3,3),(20,'fruit','http://www.flickr.com/photos/plumandjello/','plumandjello','jpg',3,3),(21,'door','http://www.flickr.com/photos/tinou/','tinou bao','jpg',3,3),(22,'banana','http://www.flickr.com/photos/robin24/','robin_24','jpg',3,3),(23,'bed','http://www.flickr.com/photos/75001512@N00/','Joelk75','jpg',3,3),(24,'girl','http://www.flickr.com/photos/afgmatters/','AfghanistanMatters','jpg',3,3),(25,'boy','http://www.flickr.com/photos/afgmatters/','AfghanistanMatters','jpg',3,3),(26,'fork','http://www.flickr.com/photos/qnr/','qnr','jpg',3,3),(27,'knife','http://www.flickr.com/photos/waltstoneburner/','Walt Stoneburner','jpg',3,3),(29,'spoon','http://www.flickr.com/photos/chainedreactions/','Believe Creative','jpg',3,3),(31,'plate','http://www.flickr.com/photos/37884983@N03/','La Grande Farmers\' Market','jpg',3,3),(33,'cup','http://www.flickr.com/photos/sienii/','sienii','jpg',3,3),(35,'wine','http://www.flickr.com/photos/tnarik/','tnarik','jpg',3,3),(37,'beer','http://www.flickr.com/photos/uberculture/','uberculture','jpg',3,3),(39,'orangejuice','http://www.flickr.com/photos/navin75/','Navin75','jpg',3,3),(41,'flower','http://www.flickr.com/photos/tboard/','TBoard','jpg',3,3),(43,'monkey','http://www.flickr.com/photos/epsos/','epSos.de','jpg',3,3),(45,'bird','http://www.flickr.com/photos/hansel5569/','55Laney69','jpg',3,3),(46,'box','http://www.flickr.com/photos/lovelihood/','lovelihood','jpg',3,3),(47,'cow','http://www.flickr.com/photos/kasthor/','kasthor','jpg',3,3),(48,'picture','http://www.flickr.com/photos/epsos/','epSos.de','jpg',3,3),(49,'horse','http://www.flickr.com/photos/anemoneprojectors/','anemoneprojectors (back soon??!)','jpg',3,3),(50,'tv','http://www.flickr.com/photos/horrortaxi/','Horrortaxi','jpg',3,3),(51,'sheep','http://www.flickr.com/photos/68582700@N00/','benjamin_scott_florin','jpg',3,3),(52,'leaf','http://www.flickr.com/photos/reyatutti/','reyatutti','jpg',3,3),(53,'pig','http://www.flickr.com/photos/peterpearson/','peter pearson','jpg',3,3),(54,'cloud','http://www.flickr.com/photos/klearchos/','Klearchos Kapoutsis','jpg',3,3),(55,'rabbit','http://www.flickr.com/photos/theseanster93/','theseanster93','jpg',3,3),(56,'sun','http://www.flickr.com/photos/vectorportal/','Vectorportal','jpg',3,3),(57,'sky','http://www.flickr.com/photos/kaigaiero2/','shikeroku','jpg',3,3),(58,'moon','http://www.flickr.com/photos/dingopup/','dingopup','jpg',3,3),(59,'computer','http://www.flickr.com/photos/zapthedingbat/','ZapTheDingbat','jpg',3,3),(60,'stars','http://www.flickr.com/photos/aresauburnphotos/','aresauburnâ„¢','jpg',3,3),(61,'building','http://www.flickr.com/photos/infomofo/','InfoMofo','jpg',3,3),(62,'desert','http://www.flickr.com/photos/chato/','ChaTo (Carlos Castillo)','jpg',3,3),(63,'cake','http://www.flickr.com/photos/dichohecho/','dichohecho','jpg',3,3),(64,'sandwich','http://www.flickr.com/photos/johnragai/','Johnragai','jpg',3,3),(65,'coffee','http://www.flickr.com/photos/pete/','Pete Barr-Watson','jpg',3,3),(66,'bus','http://www.flickr.com/photos/raver_mikey/','Gene Hunt','jpg',3,3),(67,'taxi','http://www.flickr.com/photos/raver_mikey/','Gene Hunt','jpg',3,3),(68,'passport','http://www.flickr.com/photos/smemon/','Sean MacEntee','jpg',3,3),(69,'coin','http://www.flickr.com/photos/escribileamauro/','escribileamauro','jpg',3,3),(70,'toilet','http://www.flickr.com/photos/epsos/','epSos.de','jpg',3,3),(71,'bathroom','http://www.flickr.com/photos/plutor/','Plutor','jpg',3,3),(72,'bedroom','http://www.flickr.com/photos/williamhook/','William Hook','jpg',3,3),(73,'sink','http://www.flickr.com/photos/nelsonminar/','Nelson Minar','jpg',3,3),(74,'kitchen','http://www.flickr.com/photos/62904109@N00/','palindrome6996','jpg',3,3),(75,'tap','http://www.flickr.com/photos/49889874@N05/','marc falardeau','jpg',3,3),(76,'shower','http://www.flickr.com/photos/epsos/','epSos.de','jpg',3,3),(77,'toothbrush','http://www.flickr.com/photos/oskay/','oskay','jpg',3,3),(78,'toothpaste','http://www.flickr.com/photos/wwarby/','wwarby','jpg',3,3),(121,'trousers','http://www.flickr.com/photos/aidanl/','Aidan L','jpg',3,3),(122,'skirt','http://www.flickr.com/photos/andie712b/','Andie712b','jpg',3,3),(123,'shoes','http://www.flickr.com/photos/takkaria/','Andi Sidwell','jpg',3,3),(124,'washingmachine','http://www.flickr.com/photos/tgillin/','Tim in Sydney','jpg',3,3),(125,'mug','http://www.flickr.com/photos/35168673@N03/','libertygrace0','jpg',3,3),(126,'lion','http://www.flickr.com/photos/johan-gril/','Johan92100','jpg',3,3),(127,'mouse','http://www.flickr.com/photos/chikawatanabe/','Chika','jpg',3,3),(128,'fox','http://www.flickr.com/photos/43158397@N02/','jans canon','jpg',3,3),(129,'window','http://www.flickr.com/photos/matsurika27/','Matsurika27','jpg',3,3),(130,'squirrel','http://www.flickr.com/photos/exfordy/','exfordy','jpg',6,3.66667),(131,'purse','http://www.flickr.com/photos/kirinqueen/','kirinqueen','jpg',3,3),(132,'wallet','http://www.flickr.com/photos/68751915@N05/','401K','jpg',3,3),(133,'fish','http://www.flickr.com/photos/9744413@N07/','tkcrash123','jpg',3,3),(134,'carpet','http://www.flickr.com/photos/theinnatkeywest/','theinnatkeywest','jpg',3,3),(135,'livingroom','http://www.flickr.com/photos/smomashup1/','smoMashup_','jpg',3,3),(136,'baby','http://www.flickr.com/photos/paparutzi/','paparutzi','jpg',3,3),(137,'lights','http://www.flickr.com/photos/toasty/','ToastyKen','jpg',3,3),(138,'switch','http://www.flickr.com/photos/nnova/','nicolasnova','jpg',3,3),(139,'match','http://www.flickr.com/photos/theknowlesgallery/','The Knowles Gallery','jpg',3,3),(140,'fire','http://www.flickr.com/photos/benwatts/','benwatts','jpg',3,3),(141,'mountain','http://www.flickr.com/photos/minutesalone/','MinutesAlone','jpg',3,3),(142,'hill','http://www.flickr.com/photos/thienzieyung/','thienzieyung','jpg',3,3),(143,'fly','http://www.flickr.com/photos/bareego/','bareego','jpg',3,3),(144,'mushroom','http://www.flickr.com/photos/12567713@N00/','born1945','jpg',3,3),(145,'grass','http://www.flickr.com/photos/pedestrianrex/','iantmcfarland','jpg',3,3),(146,'hedge','http://www.flickr.com/photos/brizo_the_scot/','B4bees','jpg',3,3),(147,'garlic','http://www.flickr.com/photos/mdid/','mdid','jpg',3,3),(148,'onion','http://www.flickr.com/photos/dottiemae/','Dottie Mae','jpg',3,3),(149,'potato','http://www.flickr.com/photos/samiksha/','Nisha A','jpg',4,3.25),(150,'heart','http://www.flickr.com/photos/jimmead/','Jim Mead','jpg',3,3),(151,'cooker','http://www.flickr.com/photos/cookipedia/','cookipediachef','jpg',3,3),(152,'hob','http://www.flickr.com/photos/twic/','Tom Anderson','jpg',3,3),(153,'kettle','http://www.flickr.com/photos/joshua/','Joshua Rappeneker','jpg',5,3.4),(154,'teapot','http://www.flickr.com/photos/csixty4/','csixty4','jpg',3,3),(155,'glasses','http://www.flickr.com/photos/petyosi/','petyosi','jpg',3,3),(156,'blanket','http://www.flickr.com/photos/perspicacious/','LizMarie_AK','jpg',4,3.25),(157,'metal','http://www.flickr.com/photos/designmag/','designm.ag','jpg',3,3),(158,'wood','http://www.flickr.com/photos/duchamp/','spDuchamp','jpg',3,3),(159,'saw','http://www.flickr.com/photos/wackelijmrooster/','Marcel Oosterwijk','jpg',3,3),(160,'drill','http://www.flickr.com/photos/39747297@N05/','Samuel M. Livingston','jpg',3,3),(161,'hammer','http://www.flickr.com/photos/jamesrbowe/','James Bowe','jpg',3,3),(162,'plug','http://www.flickr.com/photos/39747297@N05/','Samuel M. Livingston','jpg',3,3),(163,'book','http://www.flickr.com/photos/lkbm/','General Wesc','jpg',3,3),(164,'egg','http://www.flickr.com/photos/artbystevejohnson/','Steve A Johnson','jpg',3,3),(165,'wall','http://www.flickr.com/photos/mahidoodi/','maHidoodi','jpg',3,3),(166,'candle','http://www.flickr.com/photos/sermoa/','sermoa','jpg',3,3),(167,'headphones','http://www.flickr.com/photos/kathryn_rotondo/','kathryn_rotondo','jpg',3,3),(168,'earphones','http://www.flickr.com/photos/greencrazyeye/','efelippe','jpg',3,3),(169,'cupboard','http://www.flickr.com/photos/chalonuk/','ChalonHandmade','jpg',3,3),(170,'wardrobe','http://www.flickr.com/photos/smemon/','Sean MacEntee','jpg',3,3),(171,'church','http://www.flickr.com/photos/ndrwfgg/','ndrwfgg','jpg',3,3),(172,'ball','http://www.flickr.com/photos/trommetter/','JasonTromm','jpg',3,3),(173,'bear','http://www.flickr.com/photos/kamcmillan/','Ken McMillan','jpg',3,3),(174,'giraffe','http://www.flickr.com/photos/jrobertmoore/','jrobertmoore','jpg',3,3),(175,'river','http://www.flickr.com/photos/pikerslanefarm/','amandabhslater','jpg',3,3),(176,'coast','http://www.flickr.com/photos/dkeats/','Derek Keats','jpg',3,3),(177,'beach','http://www.flickr.com/photos/thejasp/','thejasp','jpg',3,3),(178,'bridge','http://www.flickr.com/photos/damo1977/','damo1977','jpg',3,3),(179,'eye','http://www.flickr.com/photos/neurotic_camel/','neuroticcamel','jpg',3,3),(180,'ear','http://www.flickr.com/photos/jemsweb/','jemsweb','jpg',3,3),(181,'hand','http://www.flickr.com/photos/yorkville/','yorkville','jpg',3,3),(182,'x-ray','http://www.flickr.com/photos/tracemeek/','Trace Meek','jpg',3,3),(183,'watch','http://www.flickr.com/photos/travelstar/','hirotomo','jpg',3,3),(184,'clock','http://www.flickr.com/photos/jaqian/','jaqian','jpg',3,3),(185,'sea','http://www.flickr.com/photos/nicholbenj/','FnJBnN','jpg',3,3),(186,'foot','http://www.flickr.com/photos/morten_liebach/','Morten Liebach','jpg',3,3),(187,'feet','http://www.flickr.com/photos/barkbud/','bark','jpg',3,3),(188,'pillow','http://www.flickr.com/photos/evelynishere/','EvelynGiggles','jpg',3,3),(189,'cushion','http://www.flickr.com/photos/inkdroid/','inkdroid','jpg',3,3),(190,'cherry','http://www.flickr.com/photos/s_fox/','fox_kiyo','jpg',3,3),(191,'plum','http://www.flickr.com/photos/greencolander/','Greencolander','jpg',3,3),(192,'pear','http://www.flickr.com/photos/lazar_shlevich/','Lazar_Shlevich','jpg',3,3),(193,'steak','http://www.flickr.com/photos/peterpearson/','peter pearson','jpg',3,3),(194,'lipstick','http://www.flickr.com/photos/cerromijares/','cerromijares','jpg',3,3),(195,'jellyfish','http://www.flickr.com/photos/lyng883/','lyng883','jpg',3,3),(196,'comb','http://www.flickr.com/photos/furryscalyman/','Furryscaly','jpg',3,3),(197,'cigarette','http://www.flickr.com/photos/by-james/','shrff','jpg',3,3),(198,'van','http://www.flickr.com/photos/toolstop/','toolstop','jpg',3,3),(199,'painting','http://www.flickr.com/photos/financialaidpodcast/','Christopher S. Penn','jpg',3,3);

select * from images;
