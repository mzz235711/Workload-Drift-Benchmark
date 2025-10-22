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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.PostTypeId=1 AND p.ViewCount<=10520 AND p.AnswerCount=0 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=24 AND u.Views>=0 AND u.DownVotes=0 AND u.CreationDate>='2010-07-19 20:02:18'::timestamp;

