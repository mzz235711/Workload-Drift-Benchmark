/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.Score<=41 AND p.CommentCount>=0 AND u.DownVotes>=0 AND u.UpVotes=9 AND u.CreationDate>='2010-08-06 07:43:09'::timestamp;

