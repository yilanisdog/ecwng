SET NAMES 'utf8';
DROP DATABASE IF EXISTS ecwng;
CREATE DATABASE ecwng CHARSET=UTF8;
USE ecwng;

CREATE TABLE ecwng_dish(
    did INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(2048),
    price FLOAT(6,2),
    img_sm VARCHAR(64),
    img_lg VARCHAR(64),
    detail VARCHAR(2048),
    material VARCHAR(2048)
);
INSERT INTO ecwng_dish(did,img_sm,img_lg,name,price,material,detail) VALUES
(   null,
    'main_01.jpg',
    'main_01L.jpg',
    '【比瑞吉 小型成犬粮天然狗粮1.5kg】',
    75.00,
    '每满99减20上不封顶 24省免运费',
    '比瑞吉 小型成犬粮天然狗粮，采用北欧配方，保留天然原味，确保美味又营养！合理的能量、高蛋白含量可促进肌肉生长，保持小型犬的活泼天性；果寡糖帮助改善消化系统，保持理想排便状态，减少排便量及臭味；特别添加磷脂帮助脂肪燃烧，维持理想体重。'
),
(   null,
    'main_02.jpg',
    'main_02L.jpg',
    '【冠能PRO PLAN 小型犬成犬全价狗粮7kg】',
    296.70,
    '鸡肉粉、牛初乳、鱼粉（DHA的天然来源）、鸡水解液、鸡肝脏粉、牛油、鸡油、小麦蛋白粉、玉米蛋白粉、大米、燕麦、必需维生素、矿物质、必需氨基酸、抗氧化剂',
    '宠优冠能幼犬犬粮优启爱犬成长，为幼犬提供来自初乳的免疫保护！含有天然初乳抗体的丰富营养；初乳中的生物活性成分有助于稳定幼犬仍在发育中的消化系统，促进营养素的更好吸收；含有omega-3脂肪酸DHA，有益于大脑及视力的发育。'
),
(   null,
    'main_03.jpg',
    'main_03L.jpg',
    '【妙多乐CatChow 成猫粮均衡营养猫粮10kg】',
    220.00,
    '鸡肉粉、牛肉骨粉、鸡肝脏粉、牛油、鸡油、牛肝脏水解液、小麦、玉米、玉米蛋白粉、豆粕、必需维生素、矿物质、必需氨基酸、抗氧化剂',
    '宠优妙多乐CatChow 成猫粮均衡营养猫粮为爱猫提供均衡的营养，美味让ta更乐于享用！高品质蛋白质和维生素，有助于肌肉强健；含有适量钙，帮助强化骨骼与牙齿；高品质五谷，天然纤维有助于消化系统健康；可保持猫尿液的微酸性，有助于维护猫泌尿道的健康。'
),
(   null,
    'main_04.jpg',
    'main_04L.jpg',
    '【宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg】',
    32.60,
    '每满99减20上不封顶 24省免运费',
    '宝路幼犬犬粮懂得你对狗宝宝的爱，推出幼犬全面营养犬粮，精选天然优质原料，采用科学配方精心调配，特别添加独特的乳钙奶心酥，富含天然牛奶精华，配合狗宝宝所需的维生素、矿物质及亚油酸，为狗宝宝的健康成长提供充足动力。'
),
(   null,
    'main_05.jpg',
    'main_05L.jpg',
    '【伟嘉 幼猫粮海洋鱼味猫粮1.2kg】',
    32,
    '精选肉类、鳕鱼及大马哈鱼肉、精制蛋白质粉、精炼油脂、卵磷脂、必需氨基酸、谷物（大米、小麦、玉米）、维生素（A、D、E、B族）、矿物质及微量元素（铜、铁、钾、锌、硒等）、食用着色剂、抗氧化剂',
    '升级的伟嘉海洋鱼味幼猫猫粮，可提供猫咪每日均衡营养所需。含“亮毛因子”，促进爱猫的皮毛闪闪有光泽；更有“明目因子”，帮助猫咪眼睛更明亮有神。'
),
(   null,
    'main_06.jpg',
    'main_06L.jpg',
    '【伯纳天纯 小型成犬粮天然无谷低敏配方狗粮1.5kg】',
    75.00,
    '每满99减20上不封顶 24省免运费',
    '伯纳天纯小型犬成犬粮，有生命颗粒的天然低敏粮！纯正无谷配方，浓缩天然营养精华；专为小型犬设计的生命颗粒，全面解决非病理原因引起的脱毛、毛色稀疏、毛色暗淡等小型犬常见的皮肤问题；独特的体态优化配方，让爱犬保持健美体形，持久健康。'
),
(   null,
    'main_07.jpg',
    'main_07L.jpg',
    '【佩玛思特 幼猫及怀孕母猫专用猫粮2kg 进口猫粮】',
    87.00,
    '鱼粉（DHA天然来源）、鸡肉粉、米及浓缩米蛋白、玉米及玉米蛋白、精炼动物脂肪、益生元、丝兰汁、维生素E、牛磺酸、DL-蛋氨酸、磷酸二钙、矿物质（铜、铁、锌）、维生素（维生素A、维生素D、维生素K、复合维生素B族',
    '佩玛思特幼猫及怀孕母猫专用粮深海鱼鸡肉配方提供了高品质的蛋白质和营养成分，保持幼猫良好的免疫系统和生理环境；天然DHA，有助大脑和视力发育；均衡的膳食纤维可改善爱猫体内肠道环境，利于消化吸收。'
),
(   null,
    'main_08.jpg',
    'main_08L.jpg',
    '【优基无谷低敏中大型全价成犬粮 10kg】',
    340.00,
    '鸡肉、马铃薯、蛋粉、豌豆、亚麻籽、椰子油、番茄籽油、三文鱼、苜蓿干草、胡萝卜、南瓜、木瓜、葡萄籽粕、扁豆、奶酪、海藻、碳酸钙、磷酸氢钙、大豆磷脂油、三聚磷酸钠、氯化钠、氯化钾、天然维生素E、维生素C、烟酸、肌醇、维生素A、硝酸硫胺、D-泛酸钙、盐酸吡哆醇、核黄素、β-胡萝卜素、维生素D3、叶酸、生物素、维生素B12、牛磺酸 、DL-蛋氨酸、L-赖氨酸、乳酸肠球菌、屎肠球菌、黑曲霉、酵母提取物、丝兰粉、万寿菊、薄荷、L-肉碱、果寡糖。',
    '优基 无谷低敏中大型成犬粮狗粮独特的无谷低敏配方，增强骨骼体型，亮丽毛色，抗衰老，增进肠道健康，促进大便成型，生态膳食，优化体质。'
);

##SELECT * FROM kf_dish;

CREATE TABLE ecwng_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    user_name VARCHAR(16),
    sex INT,    /*1:男  2:女*/
    order_time LONG,
    addr VARCHAR(256),
    did INT
);
INSERT INTO ecwng_order(oid, phone,user_name,sex,order_time,addr,did) VALUES
(NULL,'13501234567','婷婷',2,1445154859209,'大钟寺中鼎B座',3),
(NULL,'13501234567','婷婷',2,1445254959209,'大钟寺中鼎B座',2),
(NULL,'13501234567','婷婷',2,1445354959209,'大钟寺中鼎B座',5);

##SELECT * FROM kf_order;