/*+ HashJoin(ph v b u)
 HashJoin(v b u)
 HashJoin(b u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 Leading((ph (v (b u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=415 AND u.Views>=0 AND u.UpVotes<=456 AND b.Date<='2014-09-10 11:03:41'::timestamp;

