/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 HashJoin(movie_info_idx title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading((((movie_info_idx (title movie_info)) movie_companies) movie_keyword)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.production_year<125;

