/*+ HashJoin(ph c pl p u)
 HashJoin(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((ph ((c (pl p)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-08-03 21:46:16'::timestamp AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Views<=20 AND u.CreationDate<='2014-08-25 23:45:31'::timestamp;

