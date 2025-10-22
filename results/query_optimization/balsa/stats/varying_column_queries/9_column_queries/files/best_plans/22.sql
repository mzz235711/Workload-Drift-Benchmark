/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate>='2010-12-17 02:04:31'::timestamp AND pl.CreationDate<='2014-09-08 10:24:42'::timestamp AND p.Score>=-1 AND p.Score<=22 AND p.CommentCount>=0 AND p.CommentCount<=21 AND u.Views<=57 AND u.UpVotes<=36 AND u.CreationDate>='2010-08-05 01:08:36'::timestamp;

