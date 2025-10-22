/*+ HashJoin(cast_info movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.season_nr=0 and title.kind_id>1;

