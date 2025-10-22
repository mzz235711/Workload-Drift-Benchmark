/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code>0 and title.production_year>44;

