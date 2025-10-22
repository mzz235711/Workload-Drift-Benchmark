/*+ HashJoin(b c u p pl)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=1 AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=11 AND p.ViewCount>=0 AND p.FavoriteCount<=5 AND u.UpVotes=0 AND b.Date>='2011-02-05 16:46:11'::timestamp;

