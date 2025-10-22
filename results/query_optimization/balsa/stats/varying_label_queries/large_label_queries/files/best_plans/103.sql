/*+ HashJoin(v u b ph c)
 HashJoin(v u b ph)
 HashJoin(u b ph)
 MergeJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND b.Date>='2011-02-10 14:22:00'::timestamp AND b.Date<='2014-09-04 01:58:43'::timestamp AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-05 00:00:00'::timestamp AND u.Views<=16 AND u.DownVotes<=0 AND u.UpVotes<=81;

