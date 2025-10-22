/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=2 AND p.Score<=98 AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.CreationDate<='2014-08-22 02:34:28'::timestamp AND u.UpVotes=0 AND u.CreationDate<='2014-08-21 20:59:22'::timestamp;

