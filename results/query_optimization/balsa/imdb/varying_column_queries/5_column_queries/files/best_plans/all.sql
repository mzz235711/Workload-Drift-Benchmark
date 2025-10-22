/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and title.phonetic_code<20734 and title.season_nr=0 and title.episode_nr<6497 and title.production_year>0;

/*+ MergeJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and title.series_years>0 and title.imdb_index<7 and title.phonetic_code>0 and title.kind_id>1;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id<11504 and title.season_nr<5 and title.series_years>0 and title.production_year<122;

/*+ HashJoin(movie_keyword movie_info title movie_companies cast_info)
 HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_companies) cast_info)))) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<9 and movie_companies.company_type_id>1 and movie_info.info_type_id<8 and movie_keyword.keyword_id<2849 and title.production_year>35;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<106 and title.production_year<116 and title.phonetic_code>8573 and title.episode_nr<43 and title.imdb_index=0;

/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.production_year<118 and title.imdb_index=0 and title.phonetic_code>238 and title.season_nr=0;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<16 and title.imdb_index>0 and title.phonetic_code>8094 and title.kind_id<7 and title.season_nr<10;

/*+ NestLoop(title movie_companies movie_keyword movie_info_idx cast_info)
 NestLoop(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) cast_info)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>1 and title.production_year<122 and title.phonetic_code<12167 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword movie_info)
 HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>359 and movie_info.info_type_id>2 and title.episode_nr>0 and title.production_year<111 and title.phonetic_code>11957;

/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id>3518 and title.kind_id<2 and title.series_years<1254 and title.imdb_index>0;

/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=2 and title.kind_id<7 and title.production_year<118 and title.series_years>0 and title.season_nr=0;

/*+ HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<17 and cast_info.nr_order<1 and title.episode_nr<18 and title.season_nr<1 and title.phonetic_code<20822;

/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and cast_info.role_id<10 and title.production_year<126 and title.series_years>0 and title.phonetic_code<20613;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and cast_info.role_id>1 and movie_companies.company_type_id<2 and title.phonetic_code<8094 and title.production_year<114;

/*+ NestLoop(movie_info title movie_info_idx movie_companies cast_info)
 HashJoin(movie_info title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_info_idx) movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>3 and movie_info.info_type_id<17 and title.imdb_index=0 and title.production_year>126;

/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>2199 and title.season_nr=0 and title.production_year<125 and title.kind_id=1 and title.phonetic_code<22167;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from cast_info,movie_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<39 and movie_info.info_type_id>16 and title.kind_id=7 and title.series_years<1397 and title.episode_nr<814;

/*+ NestLoop(movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((movie_info (title movie_keyword)) movie_companies)) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>103 and movie_companies.company_type_id=2 and title.imdb_index=0 and title.production_year<51 and title.series_years>0;

/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and title.episode_nr<1227 and title.imdb_index>0 and title.kind_id>1 and title.series_years>0;

/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<50603 and movie_info.info_type_id>2 and title.phonetic_code<21694 and title.series_years>0 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=100 and title.kind_id>1 and title.phonetic_code<353 and title.imdb_index=0 and title.episode_nr>0;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<18 and title.production_year>15 and title.kind_id=1 and title.imdb_index>0 and title.phonetic_code>6851;

/*+ HashJoin(movie_companies movie_info title movie_info_idx movie_keyword)
 NestLoop(movie_info title movie_info_idx movie_keyword)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_companies ((movie_info (title movie_info_idx)) movie_keyword))) */
select count(*) from movie_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_info_idx.info_type_id<101 and title.series_years>0 and title.kind_id<3 and title.phonetic_code>2693;

/*+ NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading(((movie_info title) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.series_years>0 and title.episode_nr>3 and title.season_nr=1 and title.production_year>101;

/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and title.season_nr<3 and title.episode_nr<66 and title.kind_id<7 and title.series_years>0;

/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_info_idx) cast_info)))) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<29 and title.production_year>16 and title.phonetic_code<16973 and title.imdb_index>0 and title.season_nr<8;

/*+ HashJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (title cast_info))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<46138 and title.kind_id>1 and title.episode_nr>0 and title.production_year<80 and title.phonetic_code<2713;

/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>856 and movie_info.info_type_id>3 and movie_companies.company_type_id=1 and title.season_nr=0 and title.production_year<108;

/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from movie_companies,movie_info,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<98 and cast_info.nr_order<12 and title.season_nr<6 and title.imdb_index>0;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 MergeJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=99 and movie_companies.company_type_id<2 and title.series_years>0 and title.kind_id>1 and title.production_year<60;

/*+ NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.season_nr>0 and title.imdb_index=0 and title.phonetic_code>19371 and title.series_years<826;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.series_years>0 and title.imdb_index=0 and title.phonetic_code>2395 and title.kind_id>1;

/*+ HashJoin(movie_companies movie_info_idx title cast_info)
 NestLoop(movie_info_idx title cast_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_companies ((movie_info_idx title) cast_info))) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=101 and cast_info.nr_order<7 and title.series_years>0 and title.phonetic_code>11256 and title.production_year<121;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=101 and title.imdb_index=0 and title.phonetic_code>12956 and title.season_nr=0 and title.production_year<122;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx cast_info)
 HashJoin(movie_keyword title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_info_idx) cast_info)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id<11 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.series_years>0 and title.episode_nr<3;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>56 and movie_info_idx.info_type_id=99 and title.imdb_index=0 and title.phonetic_code>14718 and title.production_year<80;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and title.imdb_index>0 and title.season_nr<6 and title.production_year<113 and title.phonetic_code<18353;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<43 and title.kind_id=7 and title.production_year<116 and title.series_years>0 and title.imdb_index=0;

/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<124879 and movie_info.info_type_id<105 and movie_companies.company_type_id<2 and title.series_years>0 and title.kind_id>1;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.phonetic_code<5925 and title.production_year<123 and title.imdb_index=0 and title.season_nr>0;

/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>70 and title.imdb_index=0 and title.season_nr>0 and title.episode_nr>0 and title.kind_id>1;

/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<121697 and title.production_year<111 and title.phonetic_code<2038 and title.season_nr<1;

/*+ HashJoin(movie_keyword movie_info title movie_companies cast_info)
 HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_companies) cast_info)))) */
select count(*) from cast_info,movie_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and title.episode_nr>0 and title.phonetic_code<19719 and title.imdb_index=0 and title.production_year<125;

/*+ NestLoop(title movie_info_idx movie_info)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>2 and title.kind_id<2 and title.production_year>116 and title.imdb_index=0;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>1 and title.series_years>0 and title.season_nr=0 and title.imdb_index>0 and title.production_year<123;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<84509 and title.season_nr<2 and title.episode_nr>0 and title.imdb_index=0 and title.kind_id=7;

/*+ NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading(((movie_info title) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<106 and title.imdb_index>0 and title.phonetic_code>3956 and title.kind_id>1 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_info_idx.info_type_id>99 and title.episode_nr<1 and title.kind_id=7 and title.season_nr>3;

/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and title.production_year<126 and title.kind_id=7 and title.season_nr<3 and title.imdb_index=0;

/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<1000 and title.episode_nr<251 and title.season_nr>0 and title.phonetic_code<21068 and title.imdb_index=0;

/*+ HashJoin(movie_companies title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_companies ((title movie_info_idx) cast_info))) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and title.season_nr>0 and title.phonetic_code<14133 and title.kind_id=7 and title.episode_nr>0;

/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>261 and movie_companies.company_type_id>1 and cast_info.nr_order>0 and movie_info.info_type_id>5 and title.series_years>0;

/*+ HashJoin(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((title cast_info) movie_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>4 and cast_info.role_id>1 and title.production_year>120 and title.season_nr<2 and title.episode_nr<7;

/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_companies.company_type_id>1 and title.phonetic_code>62 and title.episode_nr<22 and title.series_years>0;

/*+ NestLoop(movie_info title movie_info_idx movie_keyword cast_info)
 HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_info_idx) movie_keyword)) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr<104 and title.phonetic_code>0 and title.kind_id=4 and title.imdb_index>0;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.kind_id>2 and title.season_nr=0 and title.phonetic_code>2815 and title.production_year>124;

/*+ HashJoin(title movie_info_idx movie_keyword movie_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>137 and movie_info.info_type_id>1 and title.production_year<123 and title.season_nr>0 and title.kind_id>4;

/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<45 and movie_companies.company_type_id>1 and movie_info.info_type_id>1 and title.episode_nr>0 and title.season_nr>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=100 and title.kind_id>6 and title.imdb_index=0 and title.episode_nr>0 and title.phonetic_code>575;

/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>875 and title.season_nr=0 and title.phonetic_code<16946 and title.kind_id=1 and title.production_year>114;

/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.episode_nr<23 and title.imdb_index=0 and title.production_year>112 and title.kind_id=7;

/*+ HashJoin(movie_companies movie_info title movie_info_idx movie_keyword)
 NestLoop(movie_info title movie_info_idx movie_keyword)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_companies ((movie_info (title movie_info_idx)) movie_keyword))) */
select count(*) from movie_companies,movie_info_idx,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>1 and movie_keyword.keyword_id<39118 and title.phonetic_code<71 and title.series_years>0;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and movie_info_idx.info_type_id<101 and title.imdb_index=0 and title.season_nr=0 and title.phonetic_code<1450;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.season_nr>0 and title.episode_nr>0 and title.phonetic_code<2496 and title.production_year>120;

/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and title.phonetic_code>3064 and title.imdb_index=0 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.series_years>0 and title.kind_id<7 and title.phonetic_code>16805 and title.episode_nr<31;

/*+ HashJoin(title movie_info_idx movie_keyword movie_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>242 and movie_info.info_type_id>2 and title.season_nr>1 and title.episode_nr<17 and title.production_year<117;

/*+ HashJoin(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<103 and cast_info.role_id>1 and title.season_nr=0 and title.phonetic_code>16013 and title.production_year<43;

/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.season_nr>4 and title.kind_id=7 and title.episode_nr>4 and title.production_year>122;

/*+ NestLoop(movie_keyword title movie_companies movie_info_idx)
 HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading(((movie_keyword (title movie_companies)) movie_info_idx)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<34997 and title.production_year>124 and title.season_nr=4 and title.episode_nr>15;

/*+ HashJoin(movie_companies title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_companies ((title movie_info_idx) cast_info))) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and cast_info.role_id=1 and title.episode_nr>0 and title.season_nr>0 and title.imdb_index=0;

/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>228 and cast_info.role_id=3 and title.season_nr>0 and title.phonetic_code<23080 and title.episode_nr<4192;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id<101 and title.kind_id<7 and title.series_years>0 and title.production_year<112;

/*+ HashJoin(title movie_info_idx movie_keyword movie_companies movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_companies)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.phonetic_code>0 and title.season_nr<4 and title.production_year<126 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>6299 and title.episode_nr>0 and title.phonetic_code<20957 and title.season_nr>0;

/*+ HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from cast_info,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=2 and movie_info.info_type_id<16 and movie_companies.company_type_id<2 and title.phonetic_code<5362 and title.season_nr<1;

/*+ NestLoop(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.series_years>0 and title.production_year>76 and title.kind_id<7 and title.imdb_index=0;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<21 and title.phonetic_code>0 and title.episode_nr>6 and title.production_year<94 and title.kind_id=7;

/*+ NestLoop(movie_info title movie_companies cast_info)
 HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info (title movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.imdb_index=0 and title.production_year<125 and title.season_nr>0 and title.phonetic_code>21769;

/*+ NestLoop(title cast_info movie_companies movie_info_idx movie_keyword)
 NestLoop(title cast_info movie_companies movie_info_idx)
 NestLoop(title cast_info movie_companies)
 MergeJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((((title cast_info) movie_companies) movie_info_idx) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id<101 and cast_info.role_id>10 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and movie_info.info_type_id<18 and movie_keyword.keyword_id<39906 and title.series_years>0 and title.season_nr=0;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.episode_nr>31 and title.phonetic_code>11276 and title.kind_id=7 and title.production_year<123;

/*+ MergeJoin(title cast_info movie_info_idx movie_companies movie_keyword)
 MergeJoin(title cast_info movie_info_idx movie_companies)
 MergeJoin(title cast_info movie_info_idx)
 MergeJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and movie_companies.company_type_id<2 and title.season_nr=0 and title.series_years<1203 and title.phonetic_code<17184;

/*+ HashJoin(movie_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>750 and movie_companies.company_type_id<2 and movie_info.info_type_id>3 and title.season_nr=0 and title.production_year<122;

/*+ NestLoop(title movie_keyword movie_info)
 HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.phonetic_code>7323 and title.production_year<87 and title.season_nr>0 and title.imdb_index=0;

/*+ HashJoin(movie_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_keyword.keyword_id>335 and title.season_nr=0 and title.production_year<119 and title.phonetic_code>4576;

/*+ HashJoin(movie_companies title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_companies ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.phonetic_code<12985 and title.episode_nr<5449 and title.kind_id=7;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.imdb_index>0 and title.phonetic_code>2989 and title.kind_id>2 and title.production_year<110;

/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_info_idx) cast_info)))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_keyword.keyword_id<2546 and title.imdb_index>0 and title.production_year>81 and title.season_nr=0;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>1 and title.season_nr<3 and title.episode_nr>2 and title.production_year<124 and title.series_years>0;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id<10 and title.production_year>124 and title.season_nr>0 and title.phonetic_code>3926 and title.episode_nr>0;

/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and title.imdb_index=0 and title.phonetic_code>9930 and title.kind_id>1 and title.season_nr>0;

/*+ HashJoin(title cast_info movie_companies movie_info_idx movie_info)
 MergeJoin(title cast_info movie_companies movie_info_idx)
 MergeJoin(title cast_info movie_companies)
 MergeJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_info_idx) movie_info)) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<1000 and title.kind_id<7 and title.phonetic_code>0 and title.episode_nr<213 and title.season_nr<2;

/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<45 and title.phonetic_code>3636 and title.series_years>0 and title.imdb_index>0 and title.kind_id<6;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=99 and title.series_years>0 and title.phonetic_code>2525 and title.production_year>126 and title.episode_nr<3;

/*+ HashJoin(movie_keyword movie_info title movie_companies movie_info_idx)
 NestLoop(movie_info title movie_companies movie_info_idx)
 HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading((movie_keyword ((movie_info (title movie_companies)) movie_info_idx))) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and title.imdb_index=0 and title.series_years>0 and title.phonetic_code>17649 and title.season_nr=0;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_keyword,movie_info,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and cast_info.role_id<11 and title.phonetic_code>17633 and title.season_nr>1 and title.episode_nr>9;

/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_companies.company_type_id=2 and movie_keyword.keyword_id>449 and title.series_years<1352 and title.production_year<119;

/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<107 and title.phonetic_code<12388 and title.kind_id>1 and title.season_nr=0;

/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>0 and movie_info.info_type_id>1 and title.production_year>124 and title.episode_nr>151 and title.imdb_index=0;

/*+ HashJoin(movie_companies title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_companies ((title movie_info_idx) cast_info))) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and movie_info_idx.info_type_id<101 and title.episode_nr>0 and title.kind_id>1 and title.phonetic_code<19022;

/*+ HashJoin(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and title.kind_id>1 and title.season_nr>0 and title.phonetic_code>6554 and title.production_year>118;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.season_nr>0 and title.imdb_index=0 and title.production_year<99 and title.phonetic_code>14556;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and title.production_year>86 and title.season_nr>0 and title.phonetic_code<17599 and title.kind_id>1;

/*+ MergeJoin(movie_info_idx movie_companies title cast_info movie_info)
 MergeJoin(movie_info_idx movie_companies title cast_info)
 NestLoop(movie_companies title cast_info)
 MergeJoin(movie_companies title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((movie_info_idx ((movie_companies title) cast_info)) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_companies.company_type_id<2 and title.season_nr<43 and title.phonetic_code<17184 and title.production_year>80;

/*+ NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading(((movie_info title) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id<98 and title.phonetic_code<18309 and title.series_years>0 and title.imdb_index>0;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 MergeJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and movie_companies.company_type_id=1 and movie_info.info_type_id>1 and title.phonetic_code>9860 and title.imdb_index>0;

/*+ HashJoin(movie_keyword title movie_companies movie_info cast_info)
 HashJoin(title movie_companies movie_info cast_info)
 HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info) cast_info))) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>3 and title.season_nr<6 and title.kind_id=2 and title.episode_nr<381 and title.series_years<1397;

/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>1578 and movie_info_idx.info_type_id<101 and movie_info.info_type_id<75 and movie_companies.company_type_id=2 and title.imdb_index=0;

/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<23 and movie_info_idx.info_type_id>99 and title.production_year>111 and title.episode_nr<25 and title.phonetic_code<10368;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.phonetic_code<17484 and title.kind_id<7 and title.production_year<126 and title.series_years>0;

/*+ HashJoin(movie_info title cast_info movie_info_idx movie_keyword)
 MergeJoin(title cast_info movie_info_idx movie_keyword)
 MergeJoin(title cast_info movie_info_idx)
 MergeJoin(title cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading((movie_info (((title cast_info) movie_info_idx) movie_keyword))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and movie_info.info_type_id<8 and cast_info.role_id>1 and movie_keyword.keyword_id<13847 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and title.kind_id<7 and title.phonetic_code<18237 and title.series_years>0 and title.season_nr=0;

/*+ HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and movie_info_idx.info_type_id>99 and title.imdb_index=0 and title.series_years<780 and title.kind_id<2;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and title.season_nr<1 and title.series_years<1381 and title.episode_nr<600 and title.production_year>80;

/*+ HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info ((movie_info_idx title) movie_keyword))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<95849 and movie_info.info_type_id<96 and title.imdb_index=0 and title.kind_id=1 and title.production_year<61;

/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<63964 and movie_info.info_type_id<105 and title.production_year>122 and title.episode_nr>0 and title.phonetic_code>2075;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=3 and title.phonetic_code>11788 and title.imdb_index>0 and title.production_year>126 and title.season_nr<1;

/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.season_nr>0 and title.episode_nr>0 and title.production_year>87 and title.phonetic_code<2989;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx cast_info)
 HashJoin(movie_keyword title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_info_idx) cast_info)))) */
select count(*) from movie_info,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=2 and title.season_nr<21 and title.production_year<125 and title.kind_id<7 and title.series_years>0;

/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id=1 and title.phonetic_code>16853 and title.kind_id>2 and title.series_years<1106;

/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>348 and title.imdb_index=0 and title.phonetic_code<16344 and title.series_years>0 and title.kind_id<7;

/*+ HashJoin(movie_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and title.kind_id>1 and title.season_nr<22 and title.phonetic_code<14577;

/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<6000 and movie_keyword.keyword_id<33790 and movie_info_idx.info_type_id>99 and title.season_nr<3 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<15167 and title.kind_id>1 and title.episode_nr<2 and title.phonetic_code<15725 and title.imdb_index<2;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_info,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<98 and title.kind_id<7 and title.episode_nr<1092 and title.series_years>0 and title.production_year>77;

/*+ NestLoop(movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_companies)) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<79 and title.episode_nr<27 and title.imdb_index>0 and title.production_year>115 and title.phonetic_code>13316;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and cast_info.role_id>1 and movie_companies.company_type_id>1 and movie_info.info_type_id>2 and title.production_year>120;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<106 and title.kind_id=7 and title.episode_nr>5 and title.imdb_index=0 and title.production_year<97;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<31051 and movie_info_idx.info_type_id=101 and title.episode_nr<54 and title.production_year<126 and title.series_years>0;

/*+ HashJoin(movie_info title movie_keyword cast_info)
 NestLoop(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_keyword) cast_info))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.production_year>124 and title.kind_id=7 and title.phonetic_code>0 and title.season_nr<1;

/*+ NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year>122 and title.series_years>0 and title.phonetic_code<510 and title.kind_id<7;

/*+ MergeJoin(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and movie_keyword.keyword_id>245 and title.season_nr>0 and title.kind_id>2 and title.phonetic_code<2994;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.production_year>118 and title.kind_id>1 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.role_id<10 and title.production_year>124 and title.series_years>0 and title.season_nr=0;

/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<12015 and title.phonetic_code>2853 and title.production_year<81 and title.season_nr>0 and title.episode_nr>0;

/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.episode_nr<14 and title.season_nr<2 and title.production_year<112 and title.phonetic_code>17650;

/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_info_idx) cast_info)))) */
select count(*) from movie_keyword,movie_info_idx,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>88 and movie_info_idx.info_type_id<101 and cast_info.nr_order>1 and title.imdb_index=0 and title.episode_nr>6;

/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year>98 and title.kind_id>1 and title.phonetic_code>17621 and title.season_nr>0;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and title.phonetic_code>1183 and title.series_years>0 and title.production_year>122 and title.season_nr=0;

/*+ HashJoin(movie_keyword title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword ((title movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<8001 and title.phonetic_code>0 and title.imdb_index=0 and title.season_nr>1 and title.episode_nr<4;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_companies,movie_info,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>16 and title.kind_id<7 and title.production_year>124 and title.phonetic_code>16043;

/*+ HashJoin(movie_keyword movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info movie_companies)
 HashJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 Leading((movie_keyword ((movie_info_idx (title cast_info)) movie_companies))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and cast_info.role_id<6 and movie_keyword.keyword_id<2488 and title.production_year>123 and title.kind_id=1;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and cast_info.nr_order>1 and title.kind_id>1 and title.phonetic_code<16924 and title.imdb_index>0;

/*+ NestLoop(movie_info title movie_info_idx movie_keyword cast_info)
 HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_info_idx) movie_keyword)) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.kind_id=7 and title.production_year>125 and title.season_nr=1 and title.phonetic_code>1289;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and movie_info.info_type_id<98 and movie_info_idx.info_type_id>99 and title.kind_id>1 and title.series_years>0;

/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_info_idx) cast_info)))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and cast_info.nr_order>2 and title.production_year>28 and title.episode_nr>0 and title.season_nr<4;

/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and title.episode_nr<168 and title.season_nr<44 and title.production_year<127 and title.phonetic_code>0;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.imdb_index=0 and title.series_years>498 and title.episode_nr>0 and title.kind_id>2;

/*+ HashJoin(movie_keyword movie_info title movie_companies cast_info)
 HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_companies) cast_info)))) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and cast_info.nr_order<3000 and title.episode_nr<93 and title.production_year>125;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id>99 and title.season_nr>0 and title.imdb_index=0 and title.phonetic_code>5340;

/*+ MergeJoin(title movie_companies movie_info movie_info_idx movie_keyword)
 MergeJoin(title movie_companies movie_info movie_info_idx)
 MergeJoin(title movie_companies movie_info)
 MergeJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading(((((title movie_companies) movie_info) movie_info_idx) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_keyword.keyword_id>875 and title.production_year<104 and title.kind_id=1 and title.imdb_index=0;

/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 HashJoin(movie_keyword title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_keyword ((title movie_info_idx) movie_companies)) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info_idx.info_type_id<101 and title.production_year>91 and title.episode_nr>0 and title.kind_id>1;

/*+ HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.phonetic_code>2566 and title.kind_id<4 and title.production_year<124 and title.series_years>0;

/*+ NestLoop(movie_info title movie_keyword movie_companies cast_info)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_keyword) movie_companies)) cast_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>1002 and title.imdb_index=0 and title.phonetic_code<6497 and title.series_years>0 and title.episode_nr>0;

/*+ HashJoin(title movie_keyword movie_companies movie_info)
 HashJoin(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((((title movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and title.production_year>17 and title.season_nr<7 and title.series_years<1296 and title.kind_id>1;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_keyword,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<10082 and movie_info_idx.info_type_id=99 and movie_info.info_type_id>2 and title.production_year>92 and title.season_nr=0;

/*+ HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_info_idx) cast_info))) */
select count(*) from movie_info,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and movie_info_idx.info_type_id<101 and cast_info.nr_order>1 and title.season_nr>1 and title.episode_nr>12;

/*+ HashJoin(movie_info title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and title.phonetic_code<21052 and title.kind_id=7 and title.production_year<125;

/*+ NestLoop(movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((movie_info (title movie_keyword)) movie_companies)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id>356 and title.kind_id>1 and title.imdb_index>0 and title.season_nr=0;

/*+ NestLoop(title movie_companies movie_info cast_info)
 HashJoin(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_info.info_type_id>2 and title.production_year<116 and title.season_nr=5 and title.imdb_index=0;

/*+ HashJoin(movie_keyword movie_info title cast_info movie_info_idx)
 HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(title cast_info movie_info_idx)
 NestLoop(title cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info_idx)
 Leading((movie_keyword (movie_info ((title cast_info) movie_info_idx)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.production_year>111 and title.kind_id<2 and title.phonetic_code>6886;

/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.production_year<112 and title.phonetic_code>757 and title.kind_id=1 and title.imdb_index>0;

/*+ HashJoin(title movie_companies movie_info_idx cast_info movie_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<98 and title.production_year>122 and title.series_years>0 and title.season_nr<1;

/*+ HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_info_idx) cast_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<94 and title.phonetic_code>10194 and title.season_nr>0 and title.production_year<126 and title.episode_nr>0;

/*+ NestLoop(movie_info title movie_keyword movie_companies cast_info)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_keyword) movie_companies)) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id>121 and title.production_year<67 and title.episode_nr>0 and title.phonetic_code>17617;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_keyword.keyword_id>242 and cast_info.nr_order<15 and title.episode_nr>7 and title.phonetic_code<802;

/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and movie_info.info_type_id>2 and movie_keyword.keyword_id>994 and title.imdb_index>0 and title.production_year<115;

/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<4 and movie_companies.company_type_id>1 and title.phonetic_code<14588 and title.episode_nr>0 and title.production_year<120;

/*+ HashJoin(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((title cast_info) movie_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and title.imdb_index=0 and title.production_year<126 and title.episode_nr<4 and title.phonetic_code>11774;

/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 NestLoop(movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword ((movie_info (title movie_info_idx)) cast_info))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>461 and movie_info_idx.info_type_id=99 and cast_info.nr_order>4 and title.imdb_index>0 and title.season_nr=0;

/*+ HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.kind_id<7 and title.phonetic_code>16957 and title.episode_nr<3 and title.season_nr<1;

/*+ HashJoin(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<106 and title.episode_nr<110 and title.kind_id<7 and title.phonetic_code<19476 and title.series_years<1267;

/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and movie_companies.company_type_id>1 and title.imdb_index>0 and title.production_year>111 and title.series_years>0;

/*+ NestLoop(movie_info title movie_keyword cast_info)
 HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((movie_info (title movie_keyword)) cast_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=2 and movie_keyword.keyword_id<25429 and title.season_nr=1 and title.production_year<123 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<8 and movie_companies.company_type_id=1 and title.episode_nr>1 and title.production_year>77 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<6241 and title.episode_nr>0 and title.kind_id>4 and title.production_year>0;

/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and title.imdb_index=0 and title.phonetic_code<20665 and title.season_nr>0 and title.production_year<127;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=1 and title.series_years>0 and title.phonetic_code>0 and title.season_nr<1 and title.imdb_index=0;

/*+ HashJoin(title movie_info_idx movie_companies movie_keyword movie_info)
 HashJoin(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<83789 and movie_companies.company_type_id=1 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<105 and title.episode_nr>0;

/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<98 and movie_info_idx.info_type_id=101 and title.phonetic_code>1788 and title.season_nr=1 and title.production_year<104;

/*+ NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.phonetic_code>4553 and title.production_year>107 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and title.series_years>0 and title.phonetic_code<18348 and title.kind_id<7 and title.production_year>78;

/*+ HashJoin(title cast_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_companies)
 NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<71762 and cast_info.role_id>1 and title.production_year<73 and title.season_nr=0 and title.kind_id>1;

/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=101 and movie_info.info_type_id<16 and title.imdb_index>0 and title.production_year<41 and title.phonetic_code>3016;

/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>56 and cast_info.role_id=1 and title.imdb_index=0 and title.season_nr>0 and title.production_year>99;

/*+ NestLoop(movie_info title movie_keyword movie_companies cast_info)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_keyword) movie_companies)) cast_info)) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>178 and title.phonetic_code<18274 and title.episode_nr>0 and title.series_years>0 and title.production_year<117;

/*+ HashJoin(movie_companies title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_companies ((title movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id<2 and title.imdb_index=0 and title.production_year<118 and title.season_nr=0;

/*+ HashJoin(title movie_info_idx movie_keyword movie_companies movie_info)
 HashJoin(title movie_info_idx movie_keyword movie_companies)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<6933 and movie_info_idx.info_type_id<101 and title.kind_id>3 and title.imdb_index=0;

/*+ HashJoin(title movie_info_idx movie_companies movie_keyword movie_info)
 HashJoin(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and title.kind_id>1 and title.episode_nr>0;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_info.info_type_id<103 and title.kind_id>1 and title.episode_nr>0 and title.production_year<29;

/*+ HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_info.info_type_id>16 and title.production_year<74 and title.episode_nr>0 and title.season_nr>0;

/*+ HashJoin(movie_companies movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_companies (movie_keyword (title cast_info)))) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>117 and title.phonetic_code>13431 and title.series_years>0 and title.production_year>105;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>3 and movie_info.info_type_id<107 and movie_info_idx.info_type_id=100 and cast_info.nr_order>9 and title.episode_nr>0;

/*+ NestLoop(movie_info title movie_keyword movie_companies cast_info)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_keyword) movie_companies)) cast_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and title.series_years>0 and title.production_year>22 and title.kind_id>1 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and title.production_year>65 and title.episode_nr<21 and title.kind_id<7 and title.imdb_index>0;

/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_info_idx) cast_info)))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>1644 and movie_info.info_type_id<108 and cast_info.nr_order>4 and title.imdb_index=1 and title.phonetic_code>15597;

/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.series_years>0 and title.season_nr<8 and title.episode_nr<13824 and title.production_year<128;

/*+ HashJoin(movie_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<74017 and movie_companies.company_type_id<2 and title.kind_id=1 and title.production_year>115 and title.phonetic_code<2583;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=101 and title.kind_id=7 and title.episode_nr<19 and title.production_year>0 and title.season_nr>0;

