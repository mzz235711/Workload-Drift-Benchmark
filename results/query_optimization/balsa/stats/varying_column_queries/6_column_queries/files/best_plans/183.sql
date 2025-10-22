/*+ HashJoin(b ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 Leading((b (ph (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND v.BountyAmount<=50 AND u.Views=1 AND u.DownVotes<=0 AND u.UpVotes>=0 AND b.Date<='2014-09-09 12:54:11'::timestamp;

