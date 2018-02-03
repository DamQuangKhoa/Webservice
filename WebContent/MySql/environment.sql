/*
Navicat MySQL Data Transfer

Source Server         : Environment
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : environment

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-10-12 11:18:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for diadiem
-- ----------------------------
DROP TABLE IF EXISTS `diadiem`;
CREATE TABLE `diadiem` (
  `TenDiaDiem` varchar(255) NOT NULL,
  `HinhAnh` text,
  `Loai` varchar(100) NOT NULL,
  `MaKhuVuc` int(11) NOT NULL,
  `MaDiaDiem` int(11) NOT NULL AUTO_INCREMENT,
  `TenDuong` varchar(250) NOT NULL,
  PRIMARY KEY (`MaKhuVuc`,`TenDiaDiem`,`MaDiaDiem`),
  KEY `MaDiaDiem` (`MaDiaDiem`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diadiem
-- ----------------------------
INSERT INTO `diadiem` VALUES ('150 Hồ Huấn Nghiệp', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDACgcHiMeGSgjISMtKygwPGRBPDc3PHtYXUlkkYCZlo+A\njIqgtObDoKrarYqMyP/L2u71////m8H////6/+b9//j/2wBDASstLTw1PHZBQXb4pYyl+Pj4+Pj4\n+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj/wAARCAHgAoADASIA\nAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA\nAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3\nODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm\np6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA\nAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx\nBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK\nU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3\nuLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDJoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigBKWnxQtIeOB61N5cMf3jk+9BcYNq5Voq1i3bj\nj9RTZLbAyhyPSgfs30dyCiiigzCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAqSGEyc9F9ajAyQPWrU7e\nVGFXjNBcEndvoIUgTg4zR5UMg+Q8+1VaUEqcg4IoH7TyQ6SMxtg/nSIu9wo71Zf99b579aitR+9/\nCgHBcytsyWZ/JQInBqr1qS5OZj7VFQKo7uwtS28pVgpPyn9KhpaCU7O6JbmPa+R0NQ1bueYQfeqt\nBdVWkFFFFBmFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAF\nFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUU\nUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUALGcSKfcVPdg/Ke1Vqtxus0exutBpCzTj3KtFTNauP\nu4NLHanOXPHpQL2cr2sPi+W2JPoaggbbKPyqS4lBGxeneq9BU5WaS6E90mGDdjUFWopFlTY/X+dM\ne1YfdORQEo83vRIKdGm9wtSLbSHqAKmAS3XJPJ/WgUab3eiGXbcBfxqvSu5dixptBM5czuLRRRQS\nFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAU\nUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRR\nRQAUUUUAFFFFABRRRQAUUUUAFFFFADxPIP4vzpGldhgscU2igfM9rhRRRQISpFmkXgN+dR0UAnbY\nlNxIf4v0qMkk5JyaKKBtt7hRRRQIKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooA/9k=\n', 'Kẹt Xe', '1', '26', 'Hồ Huấn Nghiệp');
INSERT INTO `diadiem` VALUES ('150 Nguyễn Đình Chiểu', null, 'Kẹt Xe', '1', '8', 'Nguyễn Đình Chiểu');
INSERT INTO `diadiem` VALUES ('180 Nguyễn Đình Chiêu', null, 'Kẹt Xe', '1', '14', 'Nguyễn Đình Chiểu');
INSERT INTO `diadiem` VALUES ('431 Nguyễn Đình Chiểu', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDACgcHiMeGSgjISMtKygwPGRBPDc3PHtYXUlkkYCZlo+A\njIqgtObDoKrarYqMyP/L2u71////m8H////6/+b9//j/2wBDASstLTw1PHZBQXb4pYyl+Pj4+Pj4\n+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj/wAARCAHgAoADASIA\nAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA\nAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3\nODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm\np6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA\nAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx\nBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK\nU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3\nuLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDJoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo\nAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA\nooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigBKWnxQtIeOB61N5cMf3jk+9BcYNq5Voq1i3bj\nj9RTZLbAyhyPSgfs30dyCiiigzCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi\niigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKK\nKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAqSGEyc9F9ajAyQPWrU7e\nVGFXjNBcEndvoIUgTg4zR5UMg+Q8+1VaUEqcg4IoH7TyQ6SMxtg/nSIu9wo71Zf99b579aitR+9/\nCgHBcytsyWZ/JQInBqr1qS5OZj7VFQKo7uwtS28pVgpPyn9KhpaCU7O6JbmPa+R0NQ1bueYQfeqt\nBdVWkFFFFBmFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAF\nFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUU\nUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUALGcSKfcVPdg/Ke1Vqtxus0exutBpCzTj3KtFTNauP\nu4NLHanOXPHpQL2cr2sPi+W2JPoaggbbKPyqS4lBGxeneq9BU5WaS6E90mGDdjUFWopFlTY/X+dM\ne1YfdORQEo83vRIKdGm9wtSLbSHqAKmAS3XJPJ/WgUab3eiGXbcBfxqvSu5dixptBM5czuLRRRQS\nFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAU\nUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRR\nRQAUUUUAFFFFABRRRQAUUUUAFFFFADxPIP4vzpGldhgscU2igfM9rhRRRQISpFmkXgN+dR0UAnbY\nlNxIf4v0qMkk5JyaKKBtt7hRRRQIKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA\nKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo\noooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii\nigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK\nACiiigAooooAKKKKACiiigAooooA/9k=\n', 'Kẹt Xe', '1', '27', 'Nguyễn Đình Chiểu');
INSERT INTO `diadiem` VALUES ('A', ' ', 'Ô Nhiễm', '1', '20', '');
INSERT INTO `diadiem` VALUES ('150 Nguyễn Cư Trinh', null, 'Kẹt Xe', '2', '4', 'Nguyễn Cư Trinh');
INSERT INTO `diadiem` VALUES ('150 Nguyễn Văn Trổi', null, 'Kẹt Xe', '2', '7', 'Nguyễn Văn Trổi');
INSERT INTO `diadiem` VALUES ('185 Nguyễn Đình Chiêu', null, 'Kẹt Xe', '2', '15', 'Nguyễn Đình Chiểu');
INSERT INTO `diadiem` VALUES ('A', ' ', 'Ô Nhiễm', '2', '21', '');
INSERT INTO `diadiem` VALUES ('150 Nguyễn Cư Trinh', null, 'Kẹt Xe', '3', '5', 'Nguyễn Cư Trinh');
INSERT INTO `diadiem` VALUES ('195 Nguyễn Đình Chiêu', null, 'Kẹt Xe', '3', '16', 'Nguyễn Đình Chiểu');
INSERT INTO `diadiem` VALUES ('A', null, 'Kẹt Xe', '3', '25', '');
INSERT INTO `diadiem` VALUES ('140 Nguyễn Văn Trổi', null, 'Kẹt Xe', '4', '3', 'Nguyễn Văn Trổi');
INSERT INTO `diadiem` VALUES ('150 Nguyễn Đình Chiêu', null, 'Kẹt Xe', '4', '9', 'Nguyễn Đình Chiểu');
INSERT INTO `diadiem` VALUES ('110 Nguyễn Văn Trổi', null, 'Kẹt Xe', '5', '1', 'Nguyễn Văn Trổi');
INSERT INTO `diadiem` VALUES ('158 Nguyễn Đình Chiêu', null, 'Kẹt Xe', '7', '10', 'Nguyễn Đình Chiểu');
INSERT INTO `diadiem` VALUES ('130 Nguyễn Văn Trổi', null, 'Kẹt Xe', '8', '2', 'Nguyễn Văn Trổi');
INSERT INTO `diadiem` VALUES ('175 Nguyễn Đình Chiêu', null, 'Kẹt Xe', '8', '12', 'Nguyễn Đình Chiêu');
INSERT INTO `diadiem` VALUES ('167 Nguyễn Văn Thao', null, 'Kẹt Xe', '9', '11', 'Nguyễn Văn Thao');
INSERT INTO `diadiem` VALUES ('180 Nguyễn Ngoc Thạch', null, 'Kẹt Xe', '10', '13', 'Nguyễn Ngọc Thach');
INSERT INTO `diadiem` VALUES ('80 Nguyễn Ngọc Thach', null, 'Kẹt Xe', '11', '19', 'Nguyễn Ngọc Thach');
INSERT INTO `diadiem` VALUES ('150 Nguyễn Thai Hoc', null, 'Ô Nhiễm', '12', '6', 'Nguyễn Thai Hoc');
INSERT INTO `diadiem` VALUES ('250 Nguyễn Văn Trổi', null, 'Kẹt Xe', '12', '17', 'Nguyễn Văn Trổi');
INSERT INTO `diadiem` VALUES ('50 Nguyễn Cư Trinh', null, 'Kẹt Xe', '13', '18', 'Nguyễn Cư Trinh');

-- ----------------------------
-- Table structure for khuvuc
-- ----------------------------
DROP TABLE IF EXISTS `khuvuc`;
CREATE TABLE `khuvuc` (
  `MaKhuVuc` int(100) NOT NULL AUTO_INCREMENT,
  `TenKhuVuc` varchar(100) NOT NULL,
  PRIMARY KEY (`MaKhuVuc`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of khuvuc
-- ----------------------------
INSERT INTO `khuvuc` VALUES ('1', 'Quận 1');
INSERT INTO `khuvuc` VALUES ('2', 'Quận 2');
INSERT INTO `khuvuc` VALUES ('3', 'Quận 3');
INSERT INTO `khuvuc` VALUES ('4', 'Quận 4');
INSERT INTO `khuvuc` VALUES ('5', 'Quận 5');
INSERT INTO `khuvuc` VALUES ('6', 'Quận 6');
INSERT INTO `khuvuc` VALUES ('7', 'Quận 7');
INSERT INTO `khuvuc` VALUES ('8', 'Quận 8');
INSERT INTO `khuvuc` VALUES ('9', 'Quận 9');
INSERT INTO `khuvuc` VALUES ('10', 'Quận Go Vap');
INSERT INTO `khuvuc` VALUES ('11', 'Quận Binh Thanh');
INSERT INTO `khuvuc` VALUES ('12', 'Quận Thu Duc');
INSERT INTO `khuvuc` VALUES ('13', 'Quận Binh Chanh');
INSERT INTO `khuvuc` VALUES ('14', 'Quận Cu Chi');
INSERT INTO `khuvuc` VALUES ('15', 'Quận Hoc Mon');
INSERT INTO `khuvuc` VALUES ('16', 'Quận Ben Thanh');

-- ----------------------------
-- Table structure for mucdo
-- ----------------------------
DROP TABLE IF EXISTS `mucdo`;
CREATE TABLE `mucdo` (
  `MaMucDo` int(11) NOT NULL,
  `TenMucDo` varchar(255) NOT NULL,
  PRIMARY KEY (`MaMucDo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mucdo
-- ----------------------------
INSERT INTO `mucdo` VALUES ('1', 'Tốt');
INSERT INTO `mucdo` VALUES ('2', 'Bình Thường');
INSERT INTO `mucdo` VALUES ('3', 'Chưa Tốt');
INSERT INTO `mucdo` VALUES ('4', 'Khá Nghiêm Trọng');
INSERT INTO `mucdo` VALUES ('5', 'Nghiêm Trọng');

-- ----------------------------
-- Table structure for quatrinh
-- ----------------------------
DROP TABLE IF EXISTS `quatrinh`;
CREATE TABLE `quatrinh` (
  `MaDiaDiem` int(11) NOT NULL,
  `STTThayDoi` int(11) NOT NULL AUTO_INCREMENT,
  `ThGianBatDau` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ThGianKetThuc` timestamp NULL DEFAULT NULL,
  `MucDo` int(11) NOT NULL,
  `Longtitude` double NOT NULL,
  `Latitude` double NOT NULL,
  PRIMARY KEY (`MaDiaDiem`,`STTThayDoi`),
  KEY `MaDiaDiem` (`STTThayDoi`),
  CONSTRAINT `MaDiaDiem` FOREIGN KEY (`MaDiaDiem`) REFERENCES `diadiem` (`MaDiaDiem`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quatrinh
-- ----------------------------
INSERT INTO `quatrinh` VALUES ('1', '27', '2017-08-31 19:13:18', null, '5', '50', '50');
INSERT INTO `quatrinh` VALUES ('1', '28', '2017-08-31 19:18:19', null, '5', '50', '50');
INSERT INTO `quatrinh` VALUES ('1', '29', '2017-08-31 19:18:19', null, '5', '53', '52');
INSERT INTO `quatrinh` VALUES ('1', '30', '2017-08-31 19:18:19', null, '5', '51', '52');
INSERT INTO `quatrinh` VALUES ('2', '31', '2017-08-31 19:18:19', null, '4', '30', '35');
INSERT INTO `quatrinh` VALUES ('2', '32', '2017-08-31 19:18:19', null, '4', '31', '35');
INSERT INTO `quatrinh` VALUES ('3', '33', '2017-08-31 19:18:19', null, '5', '55', '70');
INSERT INTO `quatrinh` VALUES ('3', '34', '2017-08-31 19:18:20', null, '5', '55', '65');
INSERT INTO `quatrinh` VALUES ('3', '35', '2017-08-31 19:18:20', null, '5', '54', '65');
INSERT INTO `quatrinh` VALUES ('3', '36', '2017-08-31 19:18:20', null, '5', '52', '64');
INSERT INTO `quatrinh` VALUES ('4', '37', '2017-08-31 19:18:20', null, '2', '20', '50');
INSERT INTO `quatrinh` VALUES ('4', '38', '2017-08-31 19:18:20', null, '2', '21', '50');
INSERT INTO `quatrinh` VALUES ('4', '39', '2017-08-31 19:18:20', null, '2', '22', '50');
INSERT INTO `quatrinh` VALUES ('5', '40', '2017-08-31 19:18:20', null, '5', '59', '50');
INSERT INTO `quatrinh` VALUES ('5', '41', '2017-08-31 19:18:20', null, '5', '60', '50');
INSERT INTO `quatrinh` VALUES ('5', '42', '2017-08-31 19:18:20', null, '5', '61', '50');
INSERT INTO `quatrinh` VALUES ('6', '43', '2017-08-31 19:18:21', null, '4', '50', '50');
INSERT INTO `quatrinh` VALUES ('26', '45', '2017-09-10 23:39:53', null, '5', '-18.5333', '65.9666967');
INSERT INTO `quatrinh` VALUES ('26', '46', '2017-09-10 23:39:53', null, '5', '-18.5333', '65.9666967');
INSERT INTO `quatrinh` VALUES ('26', '47', '2017-09-10 23:39:53', null, '5', '-18.5333', '65.9666967');
INSERT INTO `quatrinh` VALUES ('27', '48', '2017-09-10 23:59:45', null, '5', '-18.5333', '65.9666967');
