ALTER TABLE characters add primary key (`Actor/ess`);

ALTER TABLE episodes add foreign key (Star_1) references characters (`Actor/ess`);
ALTER TABLE episodes add foreign key (Star_2) references characters (`Actor/ess`);
ALTER TABLE episodes add foreign key (Star_3) references characters (`Actor/ess`);