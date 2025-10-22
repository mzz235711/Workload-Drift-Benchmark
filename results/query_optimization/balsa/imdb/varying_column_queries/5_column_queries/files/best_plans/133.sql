/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.phonetic_code<5925 and title.production_year<123 and title.imdb_index=0 and title.season_nr>0;

