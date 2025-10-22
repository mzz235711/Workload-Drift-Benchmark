/*+ HashJoin(b p u pl)
 HashJoin(p u pl)
 NestLoop(p u)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 SeqScan(pl)
 Leading((b ((p u) pl))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate<='2014-08-25 02:43:01'::timestamp AND p.PostTypeId=1 AND p.Score=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=19 AND u.Reputation>=1 AND u.Reputation<=306 AND u.DownVotes=0 AND u.CreationDate>='2010-07-28 23:56:00'::timestamp;

