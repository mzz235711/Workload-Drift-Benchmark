/*+ MergeJoin(c u p v b)
 MergeJoin(c u p v)
 HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND u.DownVotes>=0 AND u.UpVotes<=121 AND u.CreationDate<='2014-08-25 23:33:32'::timestamp;

