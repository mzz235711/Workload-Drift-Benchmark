/*+ HashJoin(title movie_info_idx movie_keyword movie_companies)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 Leading((((title movie_info_idx) movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.kind_id<7 and title.episode_nr<489;

