/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate<='2014-09-08 01:00:20'::timestamp AND p.Score=0 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=20 AND p.CreationDate>='2010-07-20 16:12:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=442 AND u.DownVotes<=2;

