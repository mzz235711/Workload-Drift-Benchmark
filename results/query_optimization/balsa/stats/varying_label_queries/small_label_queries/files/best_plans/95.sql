/*+ NestLoop(c p pl u ph)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 IndexScan(ph)
 Leading((((c (p pl)) u) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-04-17 15:32:52'::timestamp AND ph.PostHistoryTypeId=1 AND u.Reputation>=1 AND u.Reputation<=2725 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=63 AND u.CreationDate>='2011-05-05 12:54:59'::timestamp AND u.CreationDate<='2014-08-09 10:29:48'::timestamp;

