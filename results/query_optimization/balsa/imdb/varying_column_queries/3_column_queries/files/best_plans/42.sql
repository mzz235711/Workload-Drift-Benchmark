/*+ MergeJoin(movie_keyword movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_keyword movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_keyword ((movie_info_idx title) movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and cast_info.role_id>1 and title.season_nr<26;

