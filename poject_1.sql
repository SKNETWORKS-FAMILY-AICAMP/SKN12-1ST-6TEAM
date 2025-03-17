-- 1. car_types 테이블 생성
CREATE TABLE skn_project_1.car_types (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) UNIQUE NOT NULL  -- 차종 (SUV, 세단, 경차 등)
);

-- 2. fuel_types 테이블 생성
CREATE TABLE skn_project_1.fuel_types (
    fuel_id INT AUTO_INCREMENT PRIMARY KEY,
    fuel_name VARCHAR(20) UNIQUE NOT NULL  -- 연료 타입 (가솔린, 디젤, 전기 등)
);

-- 3. hobbies 테이블 생성
CREATE TABLE skn_project_1.hobbies (
    hobby_id INT AUTO_INCREMENT PRIMARY KEY,
    hobby_name VARCHAR(50) UNIQUE NOT NULL
);

-- 4. car_conditions 테이블 생성 (car_types을 참조)
CREATE TABLE skn_project_1.car_conditions (
    condition_id INT AUTO_INCREMENT PRIMARY KEY,
    car_type_id INT,  -- 차종 ID (외래키)
    family_size INT NOT NULL,  -- 가족 인원
    FOREIGN KEY (car_type_id) REFERENCES skn_project_1.car_types(type_id) ON DELETE CASCADE
);

-- 5. car_condition_hobbies 테이블 생성 (car_conditions, hobbies를 참조)
CREATE TABLE skn_project_1.car_condition_hobbies (
    condition_id INT,
    hobby_id INT,
    PRIMARY KEY (condition_id, hobby_id),
    FOREIGN KEY (condition_id) REFERENCES skn_project_1.car_conditions(condition_id) ON DELETE CASCADE,
    FOREIGN KEY (hobby_id) REFERENCES skn_project_1.hobbies(hobby_id) ON DELETE CASCADE
);

-- 6. cars 테이블 생성 (car_types, fuel_types을 참조)
CREATE TABLE skn_project_1.cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    car_name VARCHAR(50) NOT NULL,  -- 차량 이름
    car_type_id INT NOT NULL,       -- 차종 (외래키)
    fuel_id INT NOT NULL,           -- 연료 타입 (외래키)
    efficiency FLOAT NOT NULL,      -- 연비 (km/L)
    horsepower INT NOT NULL,        -- 출력 (마력)
    price INT NOT NULL,             -- 가격 (만원)
    brand VARCHAR(50) NOT NULL,     -- 브랜드
    image_url TEXT,                 -- 차량 이미지
    FOREIGN KEY (car_type_id) REFERENCES skn_project_1.car_types(type_id) ON DELETE CASCADE,
    FOREIGN KEY (fuel_id) REFERENCES skn_project_1.fuel_types(fuel_id) ON DELETE CASCADE
);