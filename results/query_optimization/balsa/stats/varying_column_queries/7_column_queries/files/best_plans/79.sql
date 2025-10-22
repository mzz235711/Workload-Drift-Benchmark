/*+ MergeJoin(v ph b u pl p)
 HashJoin(ph b u pl p)
 HashJoin(b u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((v (ph (b (u (pl p)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.CreationDate<='2014-09-03 23:54:55'::timestamp AND ph.PostHistoryTypeId=5 AND u.Views<=38 AND u.DownVotes<=104 AND u.UpVotes=0 AND u.CreationDate<='2014-09-08 17:18:53'::timestamp;

