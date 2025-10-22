/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id>1 and title.episode_nr<316;

