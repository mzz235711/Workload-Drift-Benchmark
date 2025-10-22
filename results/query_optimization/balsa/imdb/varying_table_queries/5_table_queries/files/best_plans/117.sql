/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.season_nr=1 and title.kind_id>1 and title.episode_nr<1112;

