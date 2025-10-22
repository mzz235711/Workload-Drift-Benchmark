/*+ HashJoin(cast_info movie_info movie_companies title movie_info_idx)
 MergeJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.imdb_index=0 and title.production_year>0 and title.phonetic_code<20394;

