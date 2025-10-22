/*+ NestLoop(u p pl v)
 HashJoin(u p pl)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(v)
 Leading((((u p) pl) v)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.Score<=9 AND p.CommentCount>=0 AND p.FavoriteCount<=7 AND p.CreationDate<='2014-09-09 05:49:40'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=225 AND u.CreationDate>='2010-07-19 19:11:52'::timestamp;

