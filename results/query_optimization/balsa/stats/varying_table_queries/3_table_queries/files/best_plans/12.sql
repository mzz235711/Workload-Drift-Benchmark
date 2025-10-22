/*+ MergeJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND pl.CreationDate>='2010-10-24 15:57:33'::timestamp AND pl.CreationDate<='2014-07-22 16:51:20'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=123;

