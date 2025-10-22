/*+ HashJoin(movie_info movie_info_idx title movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_keyword movie_companies)
 HashJoin(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((movie_info (movie_info_idx ((title movie_keyword) movie_companies)))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.season_nr=1 and title.kind_id>1 and title.episode_nr<1112;

