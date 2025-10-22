/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.production_year<112 and title.phonetic_code>757 and title.kind_id=1 and title.imdb_index>0;

