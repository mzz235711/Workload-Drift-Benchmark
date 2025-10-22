/*+ HashJoin(c u ph pl p)
 HashJoin(ph pl p)
 MergeJoin(pl p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 IndexScan(ph)
 SeqScan(pl)
 IndexScan(p)
 Leading(((c u) (ph (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-19 22:31:13'::timestamp AND c.CreationDate<='2014-09-08 19:25:49'::timestamp AND p.CommentCount<=18 AND ph.PostHistoryTypeId=4 AND u.UpVotes>=0;

