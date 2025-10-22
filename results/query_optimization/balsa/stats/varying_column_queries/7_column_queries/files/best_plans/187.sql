/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 15:32:58'::timestamp AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.DownVotes<=2 AND u.UpVotes>=0 AND u.UpVotes<=36;

