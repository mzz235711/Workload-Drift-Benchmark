/*+ HashJoin(cast_info movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_info_idx (movie_keyword title))))) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>229 and title.phonetic_code<6438;

