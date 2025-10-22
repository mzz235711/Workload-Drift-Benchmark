/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id<8 and title.episode_nr>138;

