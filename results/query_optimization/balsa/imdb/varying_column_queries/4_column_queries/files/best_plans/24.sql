/*+ HashJoin(cast_info movie_info_idx movie_keyword movie_companies title)
 HashJoin(movie_info_idx movie_keyword movie_companies title)
 HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_keyword (movie_companies title))))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=8 and movie_companies.company_type_id>1 and title.season_nr>1 and title.imdb_index=0;

