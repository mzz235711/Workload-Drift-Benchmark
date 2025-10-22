/*+ HashJoin(ph p u v b pl)
 HashJoin(p u v b pl)
 HashJoin(p u v b)
 HashJoin(u v b)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 IndexScan(b)
 SeqScan(pl)
 Leading((ph ((p ((u v) b)) pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score>=-1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-08-21 19:39:47'::timestamp AND ph.CreationDate<='2014-09-03 17:25:15'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2010-08-22 17:50:44'::timestamp AND u.CreationDate<='2014-09-11 10:44:05'::timestamp;

