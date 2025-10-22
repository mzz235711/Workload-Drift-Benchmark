/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.kind_id>2 and title.phonetic_code>252 and title.production_year<120;

