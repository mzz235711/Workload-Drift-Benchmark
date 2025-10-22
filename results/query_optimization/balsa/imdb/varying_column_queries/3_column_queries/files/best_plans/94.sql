/*+ HashJoin(movie_keyword movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword ((movie_info_idx title) movie_companies))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id>377 and title.season_nr=0;

