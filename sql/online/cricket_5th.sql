select * from cricket_1
union
select * from cricket_2;

#player anme
select player_name from cricket_1
union
select player_name from cricket_2;

select player_name, Popularity from cricket_1
 where popularity > (select avg(popularity) from cricket_1);
 
 select avg(popularity) from cricket_1;
 
 #common name
 select player_id, player_name from cricket_1 where cricket_1.player_id in (select player_id from cricket_2);
 
 #avg runs
 select player_id,player_name, runs from cricket_1 where runs >(select avg(runs) from cricket_1);
 select avg(runs) from cricket_1;
 
  select player_id,player_name, runs from cricket_1 where runs >50;
  
  select * from cricket_2 where player_name like 'y%v';
 
 select * from cricket_2 where player_name like 'y%';
 
 #like
 select * from cricket_1 where player_name like '%t';
 
 #not
 select * from cricket_2 where player_name not like '%t';
 
 #new cricket
 select player_id, player_name from new_cricket where charisma is null;
 
 #id change
 select player_id, substr(player_id,3) from cricket_1;
 
 #exteact
 select * from new_cricket where charisma > 25; 