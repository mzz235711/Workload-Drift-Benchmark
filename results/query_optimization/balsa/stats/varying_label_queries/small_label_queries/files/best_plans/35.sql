/*+ HashJoin(c pl u p b)
 HashJoin(c pl u p)
 HashJoin(pl u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((c (pl (u p))) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=1 AND c.CreationDate<='2014-09-08 12:35:17'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=49 AND b.Date<='2014-09-06 05:13:26'::timestamp;

