/*+ HashJoin(movie_info cast_info movie_companies movie_info_idx title)
 MergeJoin(cast_info movie_companies movie_info_idx title)
 MergeJoin(movie_companies movie_info_idx title)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info (cast_info (movie_companies (movie_info_idx title))))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and cast_info.role_id<8 and title.imdb_index=0;

