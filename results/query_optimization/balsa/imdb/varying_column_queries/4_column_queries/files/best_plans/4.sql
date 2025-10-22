/*+ HashJoin(cast_info movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and title.imdb_index>0 and title.production_year>79 and title.phonetic_code<16063;

