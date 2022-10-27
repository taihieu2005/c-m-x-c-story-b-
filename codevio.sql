-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 20, 2022 lúc 10:37 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gbankingnguyent_test888`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_tien`
--

CREATE TABLE `chuyen_tien` (
  `id` int(11) NOT NULL,
  `type_gd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `momo_id` varchar(255) DEFAULT NULL,
  `tranId` varchar(11) NOT NULL,
  `partnerId` varchar(11) NOT NULL,
  `partnerName` text NOT NULL,
  `amount` varchar(10) NOT NULL,
  `comment` text NOT NULL,
  `time` mediumtext NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT '0',
  `ownerNumber` varchar(255) DEFAULT NULL,
  `ownerName` varchar(255) DEFAULT NULL,
  `data` mediumtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chuyen_tien`
--

INSERT INTO `chuyen_tien` (`id`, `type_gd`, `momo_id`, `tranId`, `partnerId`, `partnerName`, `amount`, `comment`, `time`, `date_time`, `status`, `message`, `balance`, `ownerNumber`, `ownerName`, `data`, `type`) VALUES
(1, 'game', '44d62f78-dda1-4760-9862-fe4183b813ed', '28365261349', '01626653183', 'Tan Tai', '11700', 'Đổi thẻ cào MGD: 28365308920', '1662132780', '2022-09-02 08:33:00', 'success', 'Thành công', 275632, '0943351649', 'Nguyễn Tấn Tài', '{\"momoMsg\":{\"bankInReply\":{\"tranHisMsg\":{\"otpType\":\"NA\",\"ipAddress\":\"N\\/A\",\"enableOptions\":{\"voucher\":true,\"discount\":true,\"prepaid\":true,\"desc\":\"\"},\"_class\":\"mservice.backend.entity.msg.TranHisMsg\"},\"_class\":\"mservice.backend.entity.msg.TranHisConfirmReplyMsg\"},\"replyMsgs\":[{\"ID\":\"44d62f78-dda1-4760-9862-fe4183b813ed\",\"transId\":28365261349,\"tranId\":28365261349,\"tranHisMsg\":{\"ID\":\"44d62f78-dda1-4760-9862-fe4183b813ed\",\"user\":\"0943351649\",\"commandInd\":\"1662132778778000000_6e51359b\",\"tranId\":28365261349,\"clientTime\":1662132780165,\"ackTime\":1662132781275,\"finishTime\":1662132781275,\"tranType\":2018,\"io\":-1,\"partnerId\":\"01626653183\",\"partnerCode\":\"momo\",\"partnerName\":\"Tan Tai\",\"amount\":11700,\"comment\":\"\\u0110\\u1ed5i th\\u1ebb c\\u00e0o MGD: 28365308920\",\"status\":999,\"ownerNumber\":\"0943351649\",\"ownerName\":\"Nguy\\u1ec5n T\\u1ea5n T\\u00e0i\",\"moneySource\":1,\"desc\":\"Th\\u00e0nh c\\u00f4ng\",\"serviceMode\":\"transfer_p2p\",\"originalAmount\":11700,\"serviceId\":\"transfer_p2p\",\"quantity\":1,\"lastUpdate\":1662132781275,\"share\":\"0.0\",\"receiverType\":1,\"extras\":\"{\\\"loanId\\\":0,\\\"appSendChat\\\":false,\\\"loanIds\\\":[],\\\"stickers\\\":\\\"\\\",\\\"themeUrl\\\":\\\"https:\\/\\/cdn.mservice.com.vn\\/app\\/img\\/transfer\\/theme\\/Corona_750x260.png\\\",\\\"hidePhone\\\":false,\\\"vpc_CardType\\\":\\\"SML\\\",\\\"vpc_TicketNo\\\":\\\"103.161.174.169\\\",\\\"vpc_PaymentGateway\\\":\\\"\\\",\\\"receiverMembers\\\":[{\\\"receiverNumber\\\":\\\"01626653183\\\",\\\"receiverName\\\":\\\"Tan Tai\\\",\\\"originalAmount\\\":11700.0,\\\"error\\\":0}],\\\"origMSource\\\":1,\\\"lixi_total\\\":0.0,\\\"lixi_count\\\":1,\\\"lixi_parent_id\\\":\\\"de66ba77-0d58-448e-9d54-048168ffc67c\\\",\\\"lixi_isFixed\\\":true,\\\"app_version\\\":31152,\\\"request_id_backend\\\":\\\"1662132781136_0943351649\\\",\\\"business_trans_id\\\":\\\"1662132781136_0943351649\\\",\\\"ispayment\\\":2,\\\"money_source\\\":1,\\\"ORIGINAL_PARTNER_ID\\\":\\\"01626653183\\\",\\\"FEE_BANK\\\":0.0,\\\"FEE_MOMO\\\":0.0}\",\"channel\":\"END_USER\",\"otpType\":\"NA\",\"ipAddress\":\"198.143.186.138\",\"enableOptions\":{\"voucher\":true,\"discount\":true,\"prepaid\":true,\"desc\":\"\"},\"_class\":\"mservice.backend.entity.msg.TranHisMsg\"},\"id\":\"44d62f78-dda1-4760-9862-fe4183b813ed\",\"_class\":\"mservice.backend.entity.msg.TranHisConfirmReplyMsg\"}],\"_class\":\"mservice.backend.entity.msg.M2MUConfirmReplyMsg\"},\"time\":1662132781043,\"user\":\"0943351649\",\"pass\":\"50154bf00bacdbd179ec942967de6f01411667e4456d4c06c874e60306636a88\",\"cmdId\":\"1662132779659000000\",\"lang\":\"vi\",\"msgType\":\"M2MU_CONFIRM_REPLY\",\"result\":true,\"appCode\":\"3.1.15\",\"appVer\":31152,\"channel\":\"APP\",\"deviceOS\":\"ANDROID\",\"path\":\"\\/api\\/M2MU_CONFIRM\",\"session\":\"nosessionid\",\"extra\":{\"CASHBACK\":\"0\",\"originalClass\":\"mservice.backend.entity.msg.M2MUConfirmMsg\",\"originalPhone\":\"0943351649\",\"checkSum\":\"l696A9JN3rt\\/7z9brumEWuPhebB9vxVOo9YJa+UxJ\\/ak03afx+XvurvgxtLJDB1J8byZ1T53MIg5MABbSa2JSA==\",\"details\":\"lixi\",\"POINT\":\"0\",\"GOLDENPIG\":\"4\",\"BALANCE\":\"275632\"}}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cron_momo`
--

CREATE TABLE `cron_momo` (
  `id` int(11) NOT NULL,
  `key_login` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(6) DEFAULT NULL,
  `Name` mediumtext,
  `email` varchar(255) DEFAULT NULL,
  `imei` varchar(100) DEFAULT NULL,
  `AAID` varchar(100) DEFAULT NULL,
  `TOKEN` varchar(300) DEFAULT NULL,
  `ohash` varchar(100) DEFAULT NULL,
  `SECUREID` varchar(100) DEFAULT NULL,
  `rkey` varchar(100) DEFAULT NULL,
  `rowCardId` varchar(100) DEFAULT NULL,
  `authorization` varchar(2000) DEFAULT 'undefined',
  `refreshToken` text,
  `agent_id` varchar(100) DEFAULT 'undefined',
  `setupKeyDecrypt` varchar(150) DEFAULT NULL,
  `setupKey` varchar(200) DEFAULT NULL,
  `sessionkey` varchar(150) DEFAULT ' ',
  `RSA_PUBLIC_KEY` mediumtext,
  `BALANCE` int(11) DEFAULT NULL,
  `BankVerify` int(11) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `hardware` varchar(50) DEFAULT NULL,
  `facture` varchar(50) DEFAULT NULL,
  `MODELID` varchar(100) DEFAULT NULL,
  `TimeLogin` int(30) DEFAULT '0',
  `errorDesc` mediumtext,
  `status` varchar(255) DEFAULT NULL,
  `withdraw_status` int(11) DEFAULT '1',
  `share_fund` int(11) DEFAULT '1',
  `today` int(11) DEFAULT '0',
  `month` int(11) DEFAULT '0',
  `today_gd` int(11) DEFAULT '0',
  `noidungtra` varchar(255) DEFAULT NULL,
  `limit_day` int(11) DEFAULT '30000000',
  `limit_month` int(11) DEFAULT '100000000',
  `try` int(11) DEFAULT '0',
  `DataJson` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_sach_game`
--

CREATE TABLE `danh_sach_game` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mo_ta` varchar(10000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ten_game` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `ma_game` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_sach_game`
--

INSERT INTO `danh_sach_game` (`id`, `mo_ta`, `status`, `ten_game`, `ma_game`, `type`, `time`) VALUES
(2, '<p>-  <strong>Chẵn lẻ</strong> là một game tính kết quả bằng 1 số cuối <strong>mã giao dịch .</strong></p>', 'run', 'Chẵn lẻ', 'chan-le', 'socuoi', '2022-06-07 05:27:55'),
(3, '<p>-  <strong>Chẵn lẻ 2</strong> là một game tính kết quả bằng 1 số cuối <strong>mã giao dịch .</strong></p>', 'run', 'Chẵn lẻ 2', 'chan-le-2', 'socuoi', '2022-06-07 00:07:10'),
(4, '<p>- <strong>Tài xỉu</strong> là một game tính kết quả bằng 1 số cuối mã giao dịch .</p>', 'run', 'Tài xỉu', 'tai-xiu', 'socuoi', '2022-06-07 00:07:23'),
(5, '<p>- <strong>Tài xỉu 2</strong> là một game tính kết quả bằng 1 số cuối mã giao dịch .</p>', 'run', 'Tài xỉu 2', 'tai-xiu-2', 'socuoi', '2022-06-07 00:07:34'),
(6, '<p><strong>-&nbsp;1 phần 3</strong> là một game vô cùng dễ, tính kết quả bằng 1 số cuối mã giao dịch</p>', 'run', '1 phần 3', '1-phan-3', 'socuoi', '2022-06-07 00:07:53'),
(7, '<p><strong>- H3</strong> là một game tính kết quả bằng hiệu 2 số cuối mã giao dịch.</p>', 'run', 'H3', 'h3', 'hieu', '2022-06-07 00:08:09'),
(8, '<p>- <strong>Tổng 3 số</strong> là một game vô cùng dễ, tính kết quả bằng tổng 3 số cuối mã giao dịch.</p>', 'run', 'Tổng 3 số', 'tong-3-so', 'tong', '2022-06-07 00:08:19'),
(9, '<p>- <strong>Đoán Số </strong>là một game tính kết quả bằng 2 số cuối mã giao dịch.</p>', 'run', 'Đoán số', 'doan-so', 'socuoi', '2022-06-07 00:08:31'),
(10, '<p>- <strong>Xiên </strong>là một game tính kết quả bằng 1 số cuối mã giao dịch.</p>', 'run', 'Xiên', 'xien', 'socuoi', '2022-06-07 00:08:31'),
(11, '<p>- <strong>Lô </strong>là một game vô cùng dễ, tính kết quả bằng 2 hoặc 3 số cuối mã giao dịch.</p>', 'run', 'Lô', 'lo', 'socuoi', '2022-06-07 00:08:31'),
(12, '<p>-<strong> Gấp 3</strong> là một game vô cùng dễ, tính kết quả bằng 2 số cuối mã giao dịch.</p>', 'run', 'Gấp 3', 'g3', 'socuoi', '2022-06-07 00:08:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `device` varchar(50) DEFAULT NULL,
  `hardware` varchar(50) DEFAULT NULL,
  `facture` varchar(50) DEFAULT NULL,
  `MODELID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `device`
--

INSERT INTO `device` (`id`, `device`, `hardware`, `facture`, `MODELID`) VALUES
(3, 'SM-A102U', 'a10e', 'Samsung', 'Samsung SM-A102U'),
(4, 'SM-A305FN', 'a30', 'Samsung', 'Samsung SM-A305FN'),
(5, 'HTC One X9 dual sim', 'htc_e56ml_dtul', 'HTC', 'HTC One X9 dual sim'),
(6, 'HTC 7060', 'cp5dug', 'HTC', 'HTC HTC_7060'),
(7, 'HTC D10w', 'htc_a56dj_pro_dtwl', 'HTC', 'HTC htc_a56dj_pro_dtwl'),
(8, 'Oppo realme X Lite', 'RMX1851CN', 'Oppo', 'Oppo RMX1851'),
(9, 'MI 9', 'equuleus', 'Xiaomi', 'Xiaomi equuleus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh_phien`
--

CREATE TABLE `diemdanh_phien` (
  `id` int(11) NOT NULL,
  `phien` int(11) NOT NULL,
  `time_end` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time_next` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `diemdanh_phien`
--

INSERT INTO `diemdanh_phien` (`id`, `phien`, `time_end`, `time_next`) VALUES
(1, 1, '2022-09-02 22:29:01', '2022-09-02 22:44:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh_user`
--

CREATE TABLE `diemdanh_user` (
  `id` int(11) NOT NULL,
  `sdt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `money` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trangthai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh_win`
--

CREATE TABLE `diemdanh_win` (
  `id` int(11) NOT NULL,
  `phien_thang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `sdt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tien_nhan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `game` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mota` longtext CHARACTER SET utf8 NOT NULL,
  `moc1` varchar(100) NOT NULL,
  `thuong1` varchar(100) NOT NULL,
  `moc2` varchar(100) NOT NULL,
  `thuong2` varchar(100) NOT NULL,
  `moc3` varchar(100) NOT NULL,
  `thuong3` varchar(100) NOT NULL,
  `moc4` varchar(100) NOT NULL,
  `thuong4` varchar(100) NOT NULL,
  `moc5` varchar(100) NOT NULL,
  `thuong5` varchar(100) NOT NULL,
  `trangthai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `event`
--

INSERT INTO `event` (`id`, `key`, `game`, `mota`, `moc1`, `thuong1`, `moc2`, `thuong2`, `moc3`, `thuong3`, `moc4`, `thuong4`, `moc5`, `thuong5`, `trangthai`) VALUES
(1, 'nhiem-vu-ngay', 'Nhiệm Vụ Ngày', '<p>- Thật tuyệt vời ! Mỗi ngày chỉ cần chơi trên website chúng tôi chắc chắn bạn sẽ nhận được tiền.</p><p>- Khi chơi đủ số tiền (ko cần biết thắng thua) chắc chắn sẽ nhận được tiền.</p><p>- Hãy nhập số điện thoại của bạn vào mục bên trên để kiểm tra đã chơi bao nhiêu nhé. Chú ý : Phải nhập sdt là số cũ vd: 082xxx -&gt; 0129xxx , 03xxx -&gt; 016...</p>', '10000', '1000', '50000', '20000', '100000', '30000', '200000', '40000', '500000', '50000', 'run'),
(2, 'diem-danh', 'Điểm Danh', '<p>- Thật tuyệt vời! Mỗi ngày chỉ cần chơi trên&nbsp;website của chúng tôi&nbsp;thì bạn chắc chắn bạn sẽ nhận được tiền thưởng.</p><p>- Nhập vào số điện thoại của bạn để kiểm tra số tiền đã chơi.</p><p>- Hãy nhập số điện thoại của bạn vào mục bên trên để kiểm tra đã chơi bao nhiêu nhé.</p><p>- Chú ý : Phải nhập sdt là số cũ vd: 082xxx -&gt; 0129xxx , 03xxx -&gt; 016...</p><p>- Khi chơi đủ mốc tiền, các bạn ấn vào nhận thưởng để nhận được các mốc như sau:</p>', '', '1000', '', '2000', '', '', '', '', '', '', 'run');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(11) NOT NULL,
  `giftcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `money` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gioi_han` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `da_nhap` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_choi`
--

CREATE TABLE `lich_su_choi` (
  `id` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_nhan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tranId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partnerName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `id_momo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `amount_play` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_game` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `game` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `ma_game` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `result_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `msg_send` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `type_gd` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `result_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `time_tran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `time` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_choi`
--

INSERT INTO `lich_su_choi` (`id`, `phone`, `phone_nhan`, `tranId`, `partnerName`, `id_momo`, `amount_play`, `amount_game`, `comment`, `game`, `ma_game`, `result`, `result_text`, `msg_send`, `type_gd`, `status`, `result_number`, `time_tran`, `time`) VALUES
(1, '01626653183', '0943351649', '28365308920', 'Tan Tai', '1662132588923_0943351649', '6000', '11700', 'C2', 'Chẵn lẻ 2', 'chan-le-2', 'success', 'CHIẾN THẮNG', 'Thành công', 'real', 'success', '1', '1662132776', '2022-09-02 22:32:56'),
(2, '01626653183', '0943351649', '28365161087', 'Tan Tai', '1662132578929_0943351649', '6000', '0', 'C2', 'Chẵn lẻ 2', 'chan-le-2', 'error', 'THUA CUỘC', NULL, 'real', 'success', '0', '1662132780', '2022-09-02 22:33:00'),
(3, '01626653183', '0943351649', '28365240025', 'Tan Tai', '1662132564340_0943351649', '6000', '0', 'C2', 'Chẵn lẻ 2', 'chan-le-2', 'error', 'THUA CUỘC', NULL, 'real', 'success', '0', '1662132780', '2022-09-02 22:33:00'),
(4, '01626653183', '0943351649', '28365160895', 'Tan Tai', '1662132552226_0943351649', '6000', '0', 'C2', 'Chẵn lẻ 2', 'chan-le-2', 'error', 'THUA CUỘC', NULL, 'real', 'success', '0', '1662132780', '2022-09-02 22:33:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(255) NOT NULL,
  `msg_game` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `msg_event` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `msg_giftcode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id`, `msg_game`, `msg_event`, `msg_giftcode`) VALUES
(1, 'Đổi thẻ cào', 'Tặng quà', 'Tặng quà');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `min` int(255) DEFAULT NULL,
  `max` int(255) DEFAULT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `ma_game` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` longtext COLLATE utf8mb4_unicode_ci,
  `zalo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `token_telegram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_telegram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `script` varchar(8000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `notification` varchar(10000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_head` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `color_end` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `color_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `logo`, `facebook`, `zalo`, `telegram`, `token_telegram`, `id_telegram`, `script`, `notification`, `color`, `color_head`, `color_end`, `color_button`) VALUES
(1, 'SIEUTHINGON.SITE', 'Hệ Thống Minigame MoMo Tự Động', 'https://i.imgur.com/eiYvjwm.png', 'https://www.facebook.com/', 'zalo', 'url', '', '0', '', '<p>Chào mừng bạn đến với hệ thống Chẵn Lẻ MoMo Số 1 Việt Nam.</p><p>Trước khi chơi, bạn nên đọc kĩ những lưu ý sau, nếu bỏ qua những lưu ý này, thì khi&nbsp;<em>mất tiền, web </em>sẽ&nbsp;<em>không chịu trách nhiệm</em>.</p><p>&nbsp;&nbsp;1. Chẵn lẻ tài xỉu số cuối mã giao dịch là 0, 9 thua, nếu muốn có 0 và 9 vui lòng chơi chẵn lẻ 2.</p><p>&nbsp;&nbsp;2. Mỗi số trên web chỉ có thể giao dịch tối đa 50tr hoặc 150 lần một ngày. Vì vậy,&nbsp;số trên hệ thống&nbsp;sẽ thay đổi liên tục nên&nbsp;trước khi chơi bạn nên lên lấy số trước, tránh việc bị mất tiền.</p><p>&nbsp;&nbsp;3. Mỗi số có một mức cược khác nhau, chuyển sai tiền cược&nbsp;bạn có thể mất tiền&nbsp;</p><p>&nbsp;&nbsp;4.&nbsp;Nếu chuyển sai hạn mức, sai nội dung,&nbsp;số ngừng hoạt động,sẽ mất tiền&nbsp;</p><p><em>&nbsp;&nbsp;&nbsp;- Tất cả các mã giao dịch chỉ được hỗ trợ trong ngày nha ae!</em></p><p>&nbsp;&nbsp;5.&nbsp;Nếu gặp các vấn đề khác nữa thì bạn hãy click vào icon chát telegram  để liên hệ hỗ trợ. (24/7).</p><p><em>Khi bạn tắt chú ý này đi, đồng nghĩa với việc bạn đã đọc và chấp nhận những điều đó!</em></p><p>Đã hiểu !</p><p><br></p>', '#000000', '#000000', '#000000', '#000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings_game`
--

CREATE TABLE `settings_game` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `result` varchar(255) DEFAULT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phan_game` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `settings_game`
--

INSERT INTO `settings_game` (`id`, `key`, `comment`, `tile`, `result`, `type`, `phan_game`) VALUES
(1, 'chan-le', 'C', '2.35', '2,4,6,8', '1', 'comment_1'),
(2, 'chan-le', 'L', '2.35', '1,3,5,7', '1', 'comment_2'),
(3, 'chan-le-2', 'C2', '1.95', '0,2,4,6,8', '1', 'comment_1'),
(4, 'chan-le-2', 'L2', '1.95', '1,3,5,7,9', '1', 'comment_2'),
(5, 'tai-xiu', 'T', '2.4', '5,6,7,8', '1', 'comment_1'),
(6, 'tai-xiu', 'X', '2.4', '1,2,3,4', '1', 'comment_2'),
(7, 'tai-xiu-2', 'X2', '1.96', '0,1,2,3,4', '1', 'comment_1'),
(8, 'tai-xiu-2', 'T2', '1.96', '5,6,7,8,9', '1', 'comment_2'),
(9, '1-phan-3', 'N0', '5', '0', '1', 'comment_1'),
(10, '1-phan-3', 'N1', '3', '1,2,3', '1', 'comment_2'),
(11, '1-phan-3', 'N2', '3', '4,5,6', '1', 'comment_3'),
(12, '1-phan-3', 'N3', '', '7,8,9', '1', 'comment_4'),
(13, 'h3', 'H3', '10', '9', '2', 'comment_1'),
(14, 'h3', 'H3', '7', '7', '2', 'comment_2'),
(15, 'h3', 'H3', '5', '5', '2', 'comment_3'),
(16, 'h3', 'H3', '3', '3', '2', 'comment_4'),
(17, 'tong-3-so', 'S', '2', '7,17,27', '3', 'comment_1'),
(18, 'tong-3-so', 'S', '3', '8,18', '3', 'comment_2'),
(19, 'tong-3-so', 'S', '4', '9,19', '3', 'comment_3'),
(20, 'doan-so', 'D0', '7', '0', '1', 'comment_1'),
(21, 'doan-so', 'D1', '7', '1', '1', 'comment_2'),
(22, 'doan-so', 'D2', '7', '2', '1', 'comment_3'),
(23, 'doan-so', 'D3', '7', '3', '1', 'comment_4'),
(24, 'doan-so', 'D4', '7', '4', '1', 'comment_5'),
(25, 'doan-so', 'D5', '7', '5', '1', 'comment_6'),
(26, 'doan-so', 'D6', '7', '6', '1', 'comment_7'),
(27, 'doan-so', 'D7', '7', '7', '1', 'comment_8'),
(28, 'doan-so', 'D8', '7', '8', '1', 'comment_9'),
(29, 'doan-so', 'D9', '7', '9', '1', 'comment_10'),
(30, 'xien', 'CX', '3.3', '0,2,4', '1', 'comment_1'),
(31, 'xien', 'LT', '3.3', '5,7,9', '1', 'comment_2'),
(32, 'xien', 'CT', '3.3', '6,8', '1', 'comment_3'),
(33, 'xien', 'LX', '3.3', '1,3', '1', 'comment_4'),
(34, 'lo', 'LO', '7', '23,43,64', '2', 'comment_1'),
(35, 'lo', 'LO', '3', '10,12,29,25,28,24,31,31,33,47,44,49,59,71,76,72,77,85,87,92,95', '2', 'comment_2'),
(36, 'g3', 'G3', '3', '02,13,17,19,21,29,35,37,47,49,51,54,57,63,64,74,83,91,95,96', '3', 'comment_1'),
(37, 'g3', 'G3', '4', '69,66,99', '3', 'comment_2'),
(38, 'g3', 'G3', '5', '123,234,456,678,789', '3', 'comment_3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `top_up`
--

CREATE TABLE `top_up` (
  `id` int(11) NOT NULL,
  `game` varchar(100) CHARACTER SET utf8 NOT NULL,
  `thuong1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thuong2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thuong3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thuong4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thuong5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `top_up`
--

INSERT INTO `top_up` (`id`, `game`, `thuong1`, `thuong2`, `thuong3`, `thuong4`, `thuong5`) VALUES
(1, 'TOP TUẦN', '50000', '40000', '30000', '20000', '10000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `time` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `token`, `time`) VALUES
(1, 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'TRUE', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_giftcode`
--

CREATE TABLE `user_giftcode` (
  `id` int(11) NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giftcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `amount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyen_tien`
--
ALTER TABLE `chuyen_tien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cron_momo`
--
ALTER TABLE `cron_momo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_sach_game`
--
ALTER TABLE `danh_sach_game`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diemdanh_phien`
--
ALTER TABLE `diemdanh_phien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diemdanh_user`
--
ALTER TABLE `diemdanh_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diemdanh_win`
--
ALTER TABLE `diemdanh_win`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lich_su_choi`
--
ALTER TABLE `lich_su_choi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings_game`
--
ALTER TABLE `settings_game`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `top_up`
--
ALTER TABLE `top_up`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_giftcode`
--
ALTER TABLE `user_giftcode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chuyen_tien`
--
ALTER TABLE `chuyen_tien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cron_momo`
--
ALTER TABLE `cron_momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `diemdanh_phien`
--
ALTER TABLE `diemdanh_phien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `diemdanh_user`
--
ALTER TABLE `diemdanh_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diemdanh_win`
--
ALTER TABLE `diemdanh_win`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lich_su_choi`
--
ALTER TABLE `lich_su_choi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_giftcode`
--
ALTER TABLE `user_giftcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
