/*+ HashJoin(ph c pl p u)
 HashJoin(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((ph ((c (pl p)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-20 10:53:25'::timestamp AND c.CreationDate<='2014-09-10 22:00:45'::timestamp AND p.PostTypeId=1 AND p.CommentCount=2 AND p.CreationDate>='2010-08-02 22:42:32'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND u.Reputation>=1 AND u.Reputation<=1981;

