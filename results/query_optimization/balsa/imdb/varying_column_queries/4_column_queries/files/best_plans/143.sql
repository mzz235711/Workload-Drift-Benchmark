/*+ HashJoin(movie_companies movie_info_idx movie_info movie_keyword title)
 HashJoin(movie_info_idx movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_companies (movie_info_idx (movie_info (movie_keyword title))))) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=101 and movie_info.info_type_id<16 and title.season_nr=0 and title.imdb_index>0;

