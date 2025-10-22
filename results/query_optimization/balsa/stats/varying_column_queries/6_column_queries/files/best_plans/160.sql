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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2009-02-02 20:49:38'::timestamp AND c.CreationDate<='2014-09-04 05:14:38'::timestamp AND p.ViewCount<=10344 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

