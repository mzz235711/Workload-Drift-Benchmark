/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND u.Reputation>=1 AND u.Reputation<=378 AND u.UpVotes>=0 AND u.UpVotes<=21;

