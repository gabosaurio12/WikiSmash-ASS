CREATE TABLE attack (
    id serial primary key,
    name varchar(60) not null,
    description varchar(300),
    button varchar(30),
    frame_startup int,
    end_lag int,
    on_shield int
);

CREATE TABLE ground_moveset (
    id serial primary key,
    jab int,
    forward_tilt int,
    up_tilt int,
    down_tilt int,
    foreign key (jab) references attack(id),
    foreign key (forward_tilt) references attack(id),
    foreign key (up_tilt) references attack(id),
    foreign key (down_tilt) references attack(id)
);

CREATE TABLE air_moveset (
    id serial primary key,
    neutral int,
    forward int,
    back int,
    up int,
    down int,
    foreign key (neutral) references attack(id),
    foreign key (forward) references attack(id),
    foreign key (back) references attack(id),
    foreign key (up) references attack(id),
    foreign key (down) references attack(id)
);

CREATE TABLE special_moveset (
    id serial primary key,
    neutral int,
    side int,
    up int,
    down int,
    foreign key (neutral) references attack(id),
    foreign key (side) references attack(id),
    foreign key (up) references attack(id),
    foreign key (down) references attack(id)
);

CREATE TABLE smash_moveset (
    id serial primary key,
    forward int,
    down int,
    up int,
    foreign key (forward) references attack(id),
    foreign key (down) references attack(id),
    foreign key (up) references attack(id)
);

CREATE TABLE out_of_shield_options (
    id serial primary key,
    attack int,
    foreign key (attack) references attack(id)
);

CREATE TABLE stage (
    id serial primary key,
    name varchar(30) not null
);

CREATE TABLE character_stages (
    id serial primary key,
    stage int,
    state varchar(10),
    foreign key (stage) references stage(id)
);

CREATE TABLE character (
    id serial primary key,
    name varchar(20) not null,
    weight int not null,
    out_of_shields int,
    ground_moveset_id int,
    air_moveset_id int,
    special_moveset_id int,
    smash_moveset_id int,
    stages int,
    foreign key (out_of_shields) references out_of_shield_options(id),
    foreign key (ground_moveset_id) references ground_moveset(id),
    foreign key (air_moveset_id) references air_moveset(id),
    foreign key (special_moveset_id) references special_moveset(id),
    foreign key (smash_moveset_id) references smash_moveset(id),
    foreign key (stages) references character_stages(id)
);

CREATE TABLE player (
    id serial primary key,
    username varchar(100) not null,
    password varchar(64) not null,
    main_id int,
    secondary_id int,
    foreign key (main_id) references character(id),
    foreign key (secondary_id) references character(id)
);