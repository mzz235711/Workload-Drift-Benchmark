/*+ NestLoop(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=1 and movie_keyword.keyword_id<123018 and title.production_year<39 and title.kind_id>1;

