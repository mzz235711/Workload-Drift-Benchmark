/*+ HashJoin(ph b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=5564 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 19:12:20'::timestamp;

