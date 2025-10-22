/*+ HashJoin(cast_info movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_info_idx (movie_keyword title))))) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.series_years>0 and title.kind_id<7 and title.imdb_index>0 and title.phonetic_code>0;

