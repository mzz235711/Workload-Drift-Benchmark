/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-01 12:12:41'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=28;

