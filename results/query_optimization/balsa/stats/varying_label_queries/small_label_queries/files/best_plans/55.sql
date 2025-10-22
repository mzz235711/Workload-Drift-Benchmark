/*+ NestLoop(c u pl p ph)
 HashJoin(c u pl p)
 HashJoin(c u pl)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(ph)
 Leading(((((c u) pl) p) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.PostTypeId=1 AND p.Score>=0 AND p.ViewCount=50 AND p.CommentCount>=0 AND p.CommentCount<=8 AND pl.LinkTypeId=1 AND u.Views<=54 AND u.UpVotes<=819 AND u.CreationDate>='2010-07-20 00:34:17'::timestamp;

