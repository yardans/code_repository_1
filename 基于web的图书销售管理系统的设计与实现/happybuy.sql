/*
Navicat MySQL Data Transfer

Source Server         : bysj
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : happybuy

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-04-13 17:35:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activityId` int(12) NOT NULL AUTO_INCREMENT,
  `activityName` varchar(50) NOT NULL,
  `activityDes` varchar(500) NOT NULL,
  `discount` float DEFAULT '1',
  `fullPrice` int(12) DEFAULT NULL,
  `reducePrice` int(12) DEFAULT NULL,
  `fullNum` int(12) DEFAULT NULL,
  `reduceNum` int(12) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', 'default', 'default activity', '1', null, null, null, null);

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressID` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `detailAddr` varchar(50) NOT NULL,
  `conName` varchar(50) NOT NULL,
  `conTel` varchar(50) NOT NULL,
  PRIMARY KEY (`addressID`),
  KEY `addressID` (`addressID`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('6', '11', '山西省', '太原市', '杏花岭区', '建设路 100号', '张三', '18888888888');
INSERT INTO `address` VALUES ('7', '12', '内蒙古自治区', '赤峰市', '元宝山区', '请问', '12', '123');
INSERT INTO `address` VALUES ('8', '13', '北京市', '北京市市辖区', '东城区', '123', '123', '123');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(12) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cateId` int(12) NOT NULL AUTO_INCREMENT,
  `cateName` varchar(50) NOT NULL,
  PRIMARY KEY (`cateId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '公告');
INSERT INTO `category` VALUES ('23', '新品上架');
INSERT INTO `category` VALUES ('24', '特价图书');
INSERT INTO `category` VALUES ('25', '科普书籍');
INSERT INTO `category` VALUES ('26', '小说书籍');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `chatId` int(20) NOT NULL AUTO_INCREMENT,
  `sendUser` int(12) NOT NULL,
  `receiveUser` int(12) NOT NULL,
  `MsgContent` varchar(255) NOT NULL,
  `MsgTime` datetime NOT NULL,
  PRIMARY KEY (`chatId`),
  KEY `sendUser` (`sendUser`),
  KEY `receiveUser` (`receiveUser`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`sendUser`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`receiveUser`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `collectTime` datetime NOT NULL,
  PRIMARY KEY (`userId`,`goodsId`),
  KEY `collection_ibfk_2` (`goodsId`),
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `point` int(8) NOT NULL,
  `content` varchar(255) NOT NULL,
  `commentTime` datetime NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `userId` (`userId`),
  KEY `goodsId` (`goodsId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '11', '141', '4', '好评', '2018-04-05 17:07:32');

-- ----------------------------
-- Table structure for deliver
-- ----------------------------
DROP TABLE IF EXISTS `deliver`;
CREATE TABLE `deliver` (
  `deliverId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `sendId` int(12) NOT NULL,
  PRIMARY KEY (`deliverId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `deliver_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deliver
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` int(12) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) NOT NULL,
  `price` int(12) NOT NULL,
  `num` int(12) NOT NULL,
  `upTime` datetime NOT NULL,
  `category` int(12) NOT NULL,
  `detailCate` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `activityId` int(12) NOT NULL DEFAULT '1',
  PRIMARY KEY (`goodsId`),
  KEY `activityId` (`activityId`),
  KEY `category` (`category`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`activityId`) REFERENCES `activity` (`activityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`cateId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('140', '退换货政策', '0', '1', '2018-04-01 16:37:48', '1', '', '退换货政策\r\n\r\n\r\n\r\n一、退换货总则\r\n\r\n首家商城承诺符合以下情况，由产品售出之日（以实际签收日期为准）起7天内可以退货，15天内可以换货，客户可在线提交退换货申请或者与首家商城的客服中心（400-681-0101）联系办理退换货事宜： \r\n     1、首家商城保证所有商品均为与正规商家合作提供； \r\n     2、首家商城尽最大努力确保网站图片与实物的一致性，但由于拍摄角度、光线强度、不同显示器的色差等问题仍有可能导致出现误差，此种情况不属于质量问题范畴，图片仅供参考，一切以实物为准； \r\n     3、首家商城将根据客户对我们提出的建议和需求对本售后服务条款进行不断的更新与完善，首家商城将伴随每一位消费者一起体验快乐简单的购物过程； \r\n     4、首家商城竭诚为广大客户提供最优质的商品及服务，但对于任何欺诈或不道德行为，首家商城将保留取消订单直至依法追究法律责任的权利； \r\n     5、发现质量问题，请在收货7天内（以实际签收日期为准）进行退货申请，15天内进行换货申请；\r\n     6、单品页面已明确注明特殊售后条款的商品，优先适用特殊售后条款； \r\n     7、有关商品质量的检测，依国家相关规定执行； \r\n     8、商品签收时请当面进行验货，以免造成不必要的损失； \r\n     9、存在以下情形之一的商品，不在办理退换货服务范围之内： \r\n     （1）任何非购自首家商城的商品； \r\n     （2）因用户使用或保管不当导致出现质量问题或缺少随商品附带配件、赠品的商品；\r\n      （3）非商品自身质量问题的赠品，即仅赠品存在问题，且不影响主要商品使用或食用的； \r\n     （4）活动赠品、折价销售及其他事先申明不允许退货的促销商品； \r\n     （5）因用户非正常使用出现质量问题的或因客户原因导致超过保质期的商品； \r\n     （6）已标明瑕疵的商品，因该瑕疵问题要求退换货的；\r\n     （7）申请无理由退换货但不符合无理由退换货政策的；\r\n     （8）数码电器类商品无检测单凭证或检测单开具检测结果非国家三包法规定的特定种类故障，不在三包服务范围；\r\n     （9）其它超出《中华人民共和国产品质量法》、《中华人民共和国消费者权益保护法》等法律范围之外的退货申请。 \r\n   10、退换货商品应保持原包装和附带的说明书、保修单、标签、附件、发票等完整，有检测报告的同时提供检测报告，有赠品的应同时退回赠品；成套商品中有部分商品存在质量问题，在办理退货时，您需要提供成套商品。由于上述物件不齐全，会导致处理时间上的延误。\r\n    11、如遇所购数码电器类商品跌价，退货价格以实际支付价格为准；\r\n    12、订单发生退货后，赠送的积分将被全部收回； \r\n    13、首家商城中的部分商品是由与首家商城签订合同的商城商家提供的，这些商品的退换货需商家一起配合解决；数码电器类商品在保修期内，客户自行至相应品牌维修监测点进行维修即可，如无检测点的，客户可联系首家商城客服，由首家商城代送检测，客户需要将保修卡、产品及所有标配配件、购机发票复印件寄到首家商城客服指定服务点。\r\n\r\n温馨提醒：由于物流延缓、证件不齐等因素，由首家商城代送服务点开具的检测单可能造成中途耗时过长而错过15日换机时间，因此建议您自行送检测点开具检测报告单。\r\n    14、首家商城不支持运费到付，退换货时请勿选择货到付款，请先行垫付运费，退换货成功后运费将会汇入您的账户； \r\n    15、本政策在合理的法律法规内最终解释权归首家（上海）电子商务有限公司所有。 \r\n\r\n \r\n\r\n二、退货流程\r\n\r\n     1、发现质量问题，请在收货7天内（以实际签收日期为准）在线提交退货申请或联系客服中心提出退货申请，并提供相关资料信息，在客服中心受理您的退货申请后，用户需在3天内将商品快递至客服指定地点，经检测确属商品自身问题，可办理退货，超过3天未将商品寄出的，将不再受理退货； \r\n      2、退回商品发货快递公司由客服指定，用户产生的货物运输或快递费，由您暂时先行支付，首家商城暂无法处理到付商品，随后将该笔款项与退货款一并退还至您的原支付账户，遇特殊情形需延期处理的将会提前通知； \r\n     3、经客服中心确认退货商品，按原支付方式和原路径安排退款。在线支付的订单，我们会在15个工作日内将退款注入至您原支付账户； \r\n     4、非商品自身质量的问题，只是您单方面想退货，在保证产品无拆封、无使用、商品及附赠品无损坏，包装或商标类保持出售时原状及达到首家商城退货标准，请在收货7天内（以实际签收日期为准）拨打客服热线400-681-0101申请退货。退货所产生的其他费用，如货物运输费或快递及其他等费用由您自理。我们将给您退回的是货品的全款，不包含您应支付的商品物流费用以及寄回商品的运费；具体退货标准按照实际商品具体退换货条款进行。 \r\n     5、礼包或套装中的商品不可以部分退货，如因礼包或套装中的商品有部分存在质量问题，请您将原套装商品一并退回； \r\n     6、所有申请退款的实物类商品，均在我们收到实物之后办理退款。首家商城不支持先退款后返货的原则； \r\n     7、所有退款金额均以您实际支付款额为依据。 \r\n     8、免责申明：普通首家商城会员使用支付宝等账号支付购买商品产生退款的，退款账户由首家商城根据会员注册电话联系确认，购买账号与退款账号不一致的，由会员自行承担该风险责任。首家商城提醒您妥善保管您的手机号。\r\n\r\n \r\n\r\n三、换货流程\r\n\r\n1、发现质量问题，请在收货15天内（以实际签收日期为准）在线提交换货申请或联系客服中心提出换货申请，并提供相关资料信息，在客服中心受理您的换货申请后，用户需在3天内将商品快递至客服指定地点，经检测确属商品自身问题，可办理换货，超过3天未将商品寄出的，将不再受理换货； \r\n\r\n2、退回商品发货快递公司由客服指定，用户产生的货物运输或快递费，由您暂时先行支付，首家商城暂无法处理到付商品，随后将该笔款项将还至您的原支付账户，遇特殊情形需延期处理的将会提前通知； \r\n\r\n3、非商品自身质量的问题，只是您单方面想换货，在保证产品无拆封、无使用、商品及附赠品无损坏，包装或商标类保持出售时原状及达到首家商城换货标准，请在收货15天内（以实际签收日期为准）拨打客服热线400-681-0101申请换货。所产生的其他费用，如货物运输费或快递及其他等费用需由您承担。具体换货标准按照实际商品具体退换货条款进行。\r\n\r\n4、已申请无理由换货，并换货成功的，不再接受无理由换货。\r\n\r\n5、调换商品为购买时的同款商品。商品因尺码问题申请换货的，属非商品自身质量问题换货。\r\n\r\n      6、礼包或套装中的商品不可以部分换货，如因礼包或套装中的商品有部分存在质量问题，请您将原套装商品一并退回，首家商城会重新按照您的要求发送新的礼包套装商品； \r\n      7、所有涉及换货的商品，需要您先将原订购货物寄回，我们在收到货物之后，即可为您发送新换货商品。首家商城不支持先发货后回收。 \r\n      8、如因商品质量问题需要换货，但商家已无货可换的，会员可按退货政策申请退货。非因商品质量问题申请换货，但商家已无货可换的，收货7天内可申请无理由退货，超过7天则不予受理。\r\n\r\n\r\n\r\n   四、退换货地址\r\n\r\n   \r\n\r\n1、仓库地址：上海市青浦区久业路66号\r\n     \r\n\r\n      收货联系人：汉君收货组\r\n\r\n    \r\n\r\n      收货组电话：13918234470 \r\n\r\n\r\n\r\n   五、退换货时可能涉及的证明：\r\n\r\n    1、购货发票以及赠品； \r\n\r\n    2、权威检验机构以及品牌所有者出具的鉴定报告或其他能够证明所购买商品为假货的凭证； \r\n\r\n   3、有质量问题商品的相关照片； \r\n\r\n   4、其他需要出具的相关证明文件', '1');
INSERT INTO `goods` VALUES ('141', '高兴死了!!!（我正在人生低谷，我现在高兴死了！）', '499', '99', '2018-04-05 16:23:20', '24', '', '席卷美国年度榜单！一位抑郁症患者的快乐宣言，刷屏朋友圈的奇书。盘踞《纽约时报》畅销书榜近半年！我正在人生低谷，我现在高兴死了！我疯狂收集每一个快乐的瞬间，用它们回击每一个糟糕的日子。读客出品', '1');
INSERT INTO `goods` VALUES ('142', '余生很长，何必慌张（林熙新书）', '388', '12', '2018-04-05 16:24:25', '24', '', '富士（FUJIFILM）XP90 四防卡片机 运动相机 防水防尘防震防冻 5倍光学变焦 WIFI分享\r\n不辜负自己，莫错过流光，去做你想做的事，趁阳光正好，趁微风不燥！14万有爱文字，1095个日夜守候，每份共鸣，都带着我们对你的柔情期许，愿你从此爱情温软，余生温暖！', '1');
INSERT INTO `goods` VALUES ('143', '美国人：从殖民到民主的历程(套装3册)', '190', '32', '2018-04-05 16:25:01', '24', '', '一部全景式美国文明史，余秋雨专文推荐，入选哈佛大学百位教授推荐必读书目，北大、复旦、浙大新生推荐阅读书目！', '1');
INSERT INTO `goods` VALUES ('144', '神迹（奥斯卡获奖影片《房间》小说原作者、《纽约时报》百万畅销书作家震撼新作，横扫欧美各大榜单）', '699', '54', '2018-04-05 16:25:43', '25', '', '（《科克斯书评》《出版人周刊》等百家媒体重磅推荐，入围2016 年杰克逊文学奖决选名单。一个交织着爱与罪恶的故事一场玩弄人性心理的悬疑陷阱！我们经常祈求神灵，却不曾观照自己是魔鬼还是天使。白马时光）', '1');
INSERT INTO `goods` VALUES ('145', ' 有效管理的5大兵法（柳传志 俞敏洪做序推荐 孙陶然管理巨著）', '259', '43', '2018-04-05 16:26:13', '26', '', '柳传志、俞敏洪作序推荐，百万畅销书《创业36条军规》孙陶然全新管理力作，搭班子，带队伍必备的五大管理法则，跟着学，照着做，至少解决80%以上的管理问题', '1');
INSERT INTO `goods` VALUES ('146', '中国神话绘本（一本书读懂史前中国）', '588', '63', '2018-04-05 16:26:45', '26', '', '中国神话故事绘本 梳理中国神话脉络，构建中国神话谱系。汇集鲁迅、闻一多、袁珂等三代神话学者研究成果。全10册，4-8岁适读（附精美神话人物谱系图和贴纸）', '1');
INSERT INTO `goods` VALUES ('147', '尤斯伯恩看里面 时间·度量衡篇 ', '199', '74', '2018-04-05 16:27:38', '23', '', '风靡全球的英国儿童科普经典，英国尤斯伯恩出版公司独家授权，近300张翻页，认识时间+学习测量，让孩子爱上动手学科学', '1');
INSERT INTO `goods` VALUES ('148', '曹文轩文集典藏版', '199', '63', '2018-04-05 16:27:59', '23', '', '“国际安徒生奖”，该奖项被誉为小诺贝尔文学奖/“用诗意如水的笔触，描写原生生活中一些生活中真实而哀伤的瞬间。内含《草房子》《青铜葵花》《山羊不吃天堂草》《根鸟》《细米》《甜橙树》《三角地》', '1');
INSERT INTO `goods` VALUES ('149', '你似云烟，灿若星辰（星动三部曲1：当当独家专享版，附赠8P清新文艺志+特制精美书签）', '699', '74', '2018-04-05 16:28:25', '26', '', '娱乐圈偶像甜宠文。一纸乌龙合约，一叠虚假手稿，十八线小写手吃了娱乐圈当红男明星的豆腐，竟然还想逃……（欣欣向爱）', '1');
INSERT INTO `goods` VALUES ('150', '别说你会吃日料 ', '399', '96', '2018-04-05 16:29:30', '25', '', '日料控必读经典！不端不装的吃货指南，有趣有爱的食材百科！日式料理爱好者的入门手册，感受日本料理的奢华与本真。日料的代表符号不止有寿司和天妇罗。本书为你抽丝剥茧、娓娓道来关于日本料理的所有秘密。', '1');
INSERT INTO `goods` VALUES ('151', '此刻花开2 ', '299', '74', '2018-04-05 16:29:58', '25', '', '一场释放压力的雕刻之旅！风靡全球的纸雕艺术，比《秘密花园》更给力的减压新玩法。刷爆微博、朋友圈的纸雕减压利器！新增DIY图案、渐变色图纸。随书附赠手工刻刀、雕刻垫板。', '1');

-- ----------------------------
-- Table structure for imagepath
-- ----------------------------
DROP TABLE IF EXISTS `imagepath`;
CREATE TABLE `imagepath` (
  `pathId` int(12) NOT NULL AUTO_INCREMENT,
  `goodId` int(12) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`pathId`),
  KEY `goodid` (`goodId`),
  CONSTRAINT `imagepath_ibfk_1` FOREIGN KEY (`goodId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagepath
-- ----------------------------
INSERT INTO `imagepath` VALUES ('169', '140', '1b45807817a141399f2d1816045807cdtimg.jpg');
INSERT INTO `imagepath` VALUES ('170', '141', '23389264-1_l_1.jpg');
INSERT INTO `imagepath` VALUES ('171', '141', '23389264-1_l_1.jpg');
INSERT INTO `imagepath` VALUES ('172', '141', '23389264-1_l_1.jpg');
INSERT INTO `imagepath` VALUES ('173', '142', '25229466-1_l_6.jpg');
INSERT INTO `imagepath` VALUES ('174', '143', '25230126-1_l_3.jpg');
INSERT INTO `imagepath` VALUES ('175', '144', '25232827-1_l_6.jpg');
INSERT INTO `imagepath` VALUES ('176', '145', '25233153-1_l_11.jpg');
INSERT INTO `imagepath` VALUES ('177', '146', '25243218-1_l_3.jpg');
INSERT INTO `imagepath` VALUES ('178', '147', '25245058-1_l_4.jpg');
INSERT INTO `imagepath` VALUES ('179', '148', '1900973981-1_l_1.jpg');
INSERT INTO `imagepath` VALUES ('180', '149', '23389264-1_l_1.jpg');
INSERT INTO `imagepath` VALUES ('181', '150', '25232827-1_l_6.jpg');
INSERT INTO `imagepath` VALUES ('182', '151', 'eaa89e4b7c7240f98f977fb43ea68ba120160822192528_3399_thumb.jpg');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent` (
  `orderId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `orderTime` datetime NOT NULL,
  `oldPrice` float NOT NULL,
  `newPrice` float NOT NULL,
  `isPay` tinyint(1) NOT NULL,
  `isSend` tinyint(1) NOT NULL,
  `isReceive` tinyint(1) NOT NULL,
  `isComplete` tinyint(1) NOT NULL,
  `addressId` int(12) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `userId` (`userId`),
  KEY `orderGoods` (`orderTime`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `indent_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indent_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('1', '12', '2018-04-13 16:58:21', '898', '898', '1', '1', '0', '0', '7');
INSERT INTO `indent` VALUES ('2', '12', '2018-04-13 17:10:32', '499', '499', '1', '1', '0', '0', '7');
INSERT INTO `indent` VALUES ('3', '13', '2018-04-13 17:31:11', '887', '887', '1', '1', '1', '1', '8');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `num` int(12) NOT NULL,
  PRIMARY KEY (`itemId`),
  KEY `orderId` (`orderId`),
  KEY `goodsId` (`goodsId`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('1', '1', '141', '1');
INSERT INTO `orderitem` VALUES ('2', '1', '150', '1');
INSERT INTO `orderitem` VALUES ('3', '2', '141', '1');
INSERT INTO `orderitem` VALUES ('4', '3', '141', '1');
INSERT INTO `orderitem` VALUES ('5', '3', '142', '1');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `userId` int(12) NOT NULL,
  `goodsid` int(12) NOT NULL,
  `cateDate` datetime NOT NULL,
  `goodsNum` int(12) NOT NULL,
  PRIMARY KEY (`userId`,`goodsid`),
  KEY `userId` (`userId`),
  KEY `goodsid` (`goodsid`),
  CONSTRAINT `shopcart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shopcart_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('12', '141', '2018-04-13 17:10:49', '1');
INSERT INTO `shopcart` VALUES ('12', '143', '2018-04-13 17:25:57', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `regTime` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'zhangsan', '11111111', '2018-04-03 17:24:53', 'zhangsan@163.com', '188888888880');
INSERT INTO `user` VALUES ('12', 'dage', '456dgf159', '2018-04-13 16:39:32', '597541313@qq.com', '455565');
INSERT INTO `user` VALUES ('13', '123123', '12312312', '2018-04-13 17:30:19', '66666@qq.com', '22222');
