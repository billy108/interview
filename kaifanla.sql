SET NAMES UTF8;
DROP DATABASE IF EXISTS interview;
CREATE DATABASE interview CHARSET=UTF8;
USE interview;

CREATE TABLE interview_table(
	id INT AUTO_INCREMENT,
	title  VARCHAR(128),
	answer  VARCHAR(4096),
	PRIMARY  KEY(id)
);

SET NAMES UTF8;

INSERT INTO interview_table(title, answer) VALUES
("alt和title的区别", "alt是标签的属性,title既是属性又是标签,代表标签时,写在<head>标签时,是网页的标题.
                  title代表属性时,可以为元素显示出额外说明信息. 比如给<a>加这个属性,把鼠标移动到该上面时,会显示出title的内容.
                  alt只能用在img area和input元素中,用于网页中图片无法正常显示时给用户提供文字说明(alt是替代图像作用而不是提供额外的说明文字).
                  alt属性还具有搜索引擎优化的效果,因为搜索引擎不能读取图片.
                  注意:当这两个属性同时作用在img中时,老IE中,鼠标经过时,提示的是alt内容,而忽略title属性.如果想显示title的内容,把alt设置为空.
                  	  当在a中内嵌img标签时,起作用的是img的title属性.
");

SELECT * FROM interview_table;
