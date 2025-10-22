/*+ NestLoop(p u pl b)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(b)
 Leading((((p u) pl) b)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-01-31 17:09:40'::timestamp AND p.Score>=-1 AND p.Score<=24 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-19 20:35:34'::timestamp AND u.UpVotes<=6 AND u.CreationDate>='2010-07-19 19:11:52'::timestamp AND u.CreationDate<='2014-08-26 04:36:29'::timestamp AND b.Date>='2010-08-31 19:53:35'::timestamp AND b.Date<='2014-09-07 16:17:20'::timestamp;

