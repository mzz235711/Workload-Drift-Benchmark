/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id<7 and title.phonetic_code<18103;

