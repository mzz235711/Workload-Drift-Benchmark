/*+ HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr<9 and title.kind_id>1 and title.phonetic_code<20700;

