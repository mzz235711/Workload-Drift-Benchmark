/*+ HashJoin(cast_info movie_info_idx movie_keyword title movie_companies)
 NestLoop(movie_info_idx movie_keyword title movie_companies)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info_idx (movie_keyword title)) movie_companies))) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<103486 and movie_info_idx.info_type_id>99 and title.production_year<120 and title.episode_nr>1;

