/*+ HashJoin(movie_companies title movie_info_idx movie_keyword)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading((((movie_companies title) movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.season_nr<16;

