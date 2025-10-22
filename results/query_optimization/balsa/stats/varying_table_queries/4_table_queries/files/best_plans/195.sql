/*+ MergeJoin(c b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND b.Date<='2014-09-13 14:49:15'::timestamp AND u.Views=0 AND u.DownVotes<=3 AND u.UpVotes>=0 AND u.UpVotes<=11;

