/*+ HashJoin(c v ph u b)
 HashJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 Leading((c (v (ph (u b))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.PostHistoryTypeId=10 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.Views<=40 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-06 08:28:36'::timestamp;

